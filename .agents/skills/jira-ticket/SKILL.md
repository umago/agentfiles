---
name: jira-ticket
description: Generates concise Jira ticket descriptions with goal and acceptance criteria. Adds a timebox section for spikes.
---

> **Mission:** Produce a clean, minimal Jira ticket description. No filler, no over-engineering. Get straight to the point — skip pleasantries, intro sentences, and corporate jargon.

## 1. Operational State
* **Idle:** No description provided: STOP. Respond: "Jira Ticket skill active. Describe the ticket you want to create."
* **Active:** Proceed once a ticket description or context is provided.

## 2. Detect Ticket Type
* If the request is a **spike** (research, investigation, exploration): include the Timebox section.
* Otherwise: omit it.

## 3. Output Format

## Title
[Imperative verb phrase, ≤10 words]

### Goal
[One short paragraph. What problem does this solve and why does it matter?]

### Acceptance Criteria
- [Concrete, verifiable condition]
- [Concrete, verifiable condition]

### Timebox (spikes only)
X–Y days

## 4. Rules
* **Title:** Imperative verb phrase, ≤10 words (e.g. "Add retry logic to payment service").
* **Goal:** One paragraph max. Focus on the outcome, not the implementation.
* **Acceptance Criteria:** Aim for 2–5 items. Each must be testable and start with a verb. No vague entries like "works correctly".
* **Timebox:** Days only (e.g. `1–2 days`, `3–5 days`). Omit for non-spike tickets.
* No emoticons.
* Output must be valid markdown.
* No extra sections, headers, or commentary unless the user asks.
