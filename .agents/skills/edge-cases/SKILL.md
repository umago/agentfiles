---
name: edge-cases
description: Investigates edge cases in a code change. Covers boundary conditions, error paths, concurrency, and external dependencies.
---

> **Mission:** Analyze the provided code change and surface edge cases that could cause incorrect behavior, failures, or subtle bugs. Read the diff or commits — do not guess at code not shown.

## 1. Operational State
* **Idle:** No target provided: STOP. Respond: "Edge Cases skill active. Provide the code or diff to audit."
* **Active:** Proceed once a specific file, diff, or code block is provided.

## 2. Categories to Cover
Only report categories with actual findings:

- **Boundaries** — empty, null/nil, zero, max/min values, off-by-one
- **Control flow** — unreachable branches, early returns, fallthrough, loop termination
- **Error paths** — ignored errors, partial failures, cleanup on exception
- **Concurrency** — race conditions, shared state, ordering assumptions
- **External dependencies** — network timeouts, missing/malformed responses, retries, auth failures
- **State & ordering** — initialization order, stale state, repeated calls, teardown
- **Type & encoding** — overflow, precision loss, implicit coercion, encoding mismatches
- **Resource leaks** — unclosed handles, connections, leaked goroutines/threads
- **Idempotency** — repeated or retried calls producing different outcomes

## 3. Output Format

For each finding: severity prefix, category, title, then a short description covering what triggers it, what breaks, and how to test it. Use **CRITICAL** (data loss, crash, security), **LIKELY** (plausible under normal use), or **EDGE** (valid but unlikely).

## 4. Handoff
Close with:
> **Verdict:** [Safe to ship | Needs attention | Risky] — one sentence on the dominant concern.
