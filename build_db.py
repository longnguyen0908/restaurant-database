"""Build restaurant.db from the SQL files, then print the results of all 20 reports."""
import re
import sqlite3
from pathlib import Path

HERE = Path(__file__).parent
SQL_DIR = HERE / "sql"
DB_PATH = HERE / "restaurant.db"


def build():
    DB_PATH.unlink(missing_ok=True)
    con = sqlite3.connect(DB_PATH)
    for name in ["01_schema_and_data.sql", "02_indexes.sql"]:
        con.executescript((SQL_DIR / name).read_text(encoding="utf-8"))
    con.execute("PRAGMA foreign_keys = ON")
    problems = con.execute("PRAGMA foreign_key_check").fetchall()
    tables = [row[0] for row in con.execute("SELECT name FROM sqlite_master WHERE type = 'table' ORDER BY name")]
    rows = sum(con.execute(f'SELECT COUNT(*) FROM "{t}"').fetchone()[0] for t in tables)
    print(f"Built {DB_PATH.name}: {len(tables)} tables, {rows} rows, {len(problems)} foreign-key problems")
    return con


def run_reports(con):
    text = (SQL_DIR / "03_reports.sql").read_text(encoding="utf-8")
    for block in re.split(r"\n(?=-- \d+\. )", text):
        header = re.match(r"-- (\d+)\. (.*)\n", block)
        if not header:
            continue
        cursor = con.execute(block[header.end():].strip())
        print(f"\n{header.group(1)}. {header.group(2)}")
        print(" | ".join(col[0] for col in cursor.description))
        for row in cursor.fetchall():
            print(" | ".join(str(value) for value in row))


if __name__ == "__main__":
    connection = build()
    run_reports(connection)
    connection.close()
