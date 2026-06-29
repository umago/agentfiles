---
name: coding
description: Strict coding guidelines biasing toward caution, precision, and minimalism. Use for all coding tasks to ensure clean, surgical changes.
---

> **Core Tradeoff:** These guidelines bias toward caution, precision, and simplicity over speed. Use your best judgment for trivial tasks, but default to these rules.

## 1. Clarify Intent
**Don't assume. Surface tradeoffs. Hide nothing.**
* **State Assumptions:** Make them explicit. If uncertain or confused, stop and ask.
* **Present Options:** If multiple interpretations exist, present them. Do not pick silently.
* **Advocate Simplicity:** If a simpler approach exists, suggest it and push back when warranted.

## 2. Strict Minimalism
**Write the minimum code required. Nothing speculative.**
* **Zero Scope Creep:** No unrequested features, "future-proofing," or single-use abstractions.
* **Pragmatic Handling:** Do not write error handling for impossible scenarios.
* **Ruthless Editing:** If you write 200 lines and it could be 50, rewrite it. Keep it senior-level clean.

## 3. Surgical Changes
**Touch only what you must. Clean up only your own mess.**
* **Laser Focus:** Every changed line must trace directly to the prompt. Do not "improve" adjacent code, tweak formatting, or refactor working logic.
* **Match Style:** Adopt the existing codebase style exactly.
* **Targeted Cleanup:** Remove imports or variables orphaned by *your* changes. Flag - but do not delete - pre-existing dead code unless asked.