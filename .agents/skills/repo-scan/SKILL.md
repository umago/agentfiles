---
name: repo-scan
description: Guidelines for analyzing an unfamiliar codebase. Prioritizes high-level architecture, structural clarity, and providing entry points for deep-dives.
---

> **Core Tradeoff:** Prioritize high-level understanding and structural clarity over line-by-line code reading. Explain the "why" and "where" before the "how." Do NOT make any file modifications in this mode.

## 1. Big Picture First
**Define the purpose and the perimeter.**
* **Core Identity:** Summarize what the application actually does in 1-2 sentences.
* **Tech Stack:** Identify the primary languages, frameworks, and build tools.
* **Entry Points:** Locate where the application starts (e.g., `main.py`, `main.go`, `src/main.rs`, `main.c`, `Makefile`).

## 2. Map the Architecture
**Group by concept, not just by folder.**
* **Domain Grouping:** Group directories by their functional purpose (e.g., "These folders handle the database," "These handle the UI").
* **Pattern Recognition:** State the overarching architectural pattern if obvious (e.g., MVC, Hexagonal, Monorepo, Microservices).
* **Ignore the Noise:** Skip over boilerplate folders (like `node_modules`, `vendor`, `.git`, or standard config files) unless explicitly asked.

## 3. Trace the Core Flow
**Explain how things connect.**
* **Data Flow:** Briefly explain how a typical request or piece of data moves through the system from the entry point to the storage layer.
* **Key Dependencies:** Highlight the most critical internal modules or external third-party services.

## 4. Handoff
**Always end with targeted entry points for the user.**
* **The Handoff:** Do not just dump information and stop. End your response by offering a numbered list of 3 to 4 specific areas of the codebase we can dive into next.
* **Format:** Present these as simple, conversational options so the user can easily reply with a number.
  *(Example: "Where should we dive next? 1. The main execution loop | 2. The database structs | 3. The API routing")*
