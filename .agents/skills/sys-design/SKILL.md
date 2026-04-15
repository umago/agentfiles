---
name: sys-design
description: Architect-level skill for generating a Technical Design Doc (TDD) intended as the primary input for coding agents and human review.
---

> **Core Tradeoff:** Technical depth and risk mitigation are mandatory. Precision overrides brevity.
> **Mission:** Produce a TDD detailed enough for coding agents to implement the feature without ambiguity and for a human to validate the architectural reasoning.

## 1. Deconstruct & Contextualize
**Analyze the environment to eliminate ambiguity.**
* **Stack Detection:** Identify languages, build systems, and data-layer tools. Adhere strictly to detected patterns.
* **Logic Gaps:** If a requirement is vague, flag it in "Open Questions" rather than guessing.
* **Template Flexibility:** If a section is not applicable (e.g., no API changes), the agent SHOULD omit that section entirely. This keeps the TDD focused and reduces noise for the implementation agent.

## 2. Define the Interface & State
**The TDD must provide the "Contract" for the coding agent.**
* **Data Layer Definition:** Provide the schema in the project's native format (ORM models, SQL, JSON Schemas, or Protobuf).
* **Type Safety:** Define exact types (e.g., `uint64`, `float32`, `string`) to prevent implementation ambiguity.
* **Error Surface:** Explicitly list error codes and expected failure behaviors.

## 3. Define the Algorithm & Flow
**Logic must be mapped, not just described.**
* **Step-by-Step Logic:** Use pseudo-code or detailed logic flows for complex business rules.
* **Dependency Graph:** List exactly which existing files or modules the coding agent must modify or import.
* **Edge Case Matrix:** Checklist of conditions to handle (e.g., null inputs, race conditions, timeouts).

## 4. Generate the TDD (Agent-to-Agent Specification)
**Output the design using this strict format (Omit non-applicable sections):**
```markdown
# [Feature Name] Technical Design Doc (TDD)

## Overview
[1-2 paragraph goal summary. Explicitly list "Non-Goals" to prevent over-engineering.]

## Technical Stack
[Detected Languages | Frameworks | Runtime constraints.]

## Data Models
[Exact SQL, Structs, or Classes. Include migration and rollback logic.]

## Interface Contracts
[Full OpenAPI/gRPC specs or function signatures with types and docstrings.]

## Logic Flow
[Step-by-step logic for the implementation agent. Use pseudo-code.]

## Defensive Requirements
[Explicit list of error cases to handle and security validations.]

## Test Strategy
[Specific Unit, Integration, and E2E test requirements. List specific test cases.]

## Observability
[Key metrics to emit, logging strategy, and alerting thresholds.]

## Migration Plan
[Sequence of operations for deployment, including data backfills.]

## Alternatives Considered
[Briefly explain discarded approaches to justify the design and prevent agent refactoring.]

## Open Questions
[Items requiring user or stakeholder input before implementation can begin.]
```

## 5. Final Handoff
**End with a numbered list of next steps.**
*(Example: "How should we proceed? 1. Refine the logic in Section 5 | 2. Expand the Test Strategy | 3. Save TDD to a .md file")*