CREATE TABLE IF NOT EXISTS sandboxes (
  id TEXT PRIMARY KEY,
  app_name TEXT NOT NULL,
  goal TEXT NOT NULL,
  slug TEXT NOT NULL,
  lane TEXT NOT NULL DEFAULT 'sandbox',
  status TEXT NOT NULL DEFAULT 'planned',
  repo_name TEXT NOT NULL,
  worker_name TEXT NOT NULL,
  d1_name TEXT,
  kv_name TEXT,
  needs_d1 INTEGER NOT NULL DEFAULT 0,
  needs_kv INTEGER NOT NULL DEFAULT 0,
  needs_mcp INTEGER NOT NULLDEFAULT 1,
  ttl_hours INTEGER NOT NULL DEFAULT 72,
  plan_json TEXT NOT NULL,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);
