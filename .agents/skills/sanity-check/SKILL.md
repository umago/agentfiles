---
name: sanity-check
description: Evaluates code for readability, naming consistency, and immediate logic errors without performing deep architectural or security analysis.
---

> **Core Tradeoff:** Efficiency and readability are the primary focus. This is a targeted check to ensure code clarity and standard correctness.
> **Mission:** Provide a concise review focused on clarity and standards. Ensure the code is easy to follow, adheres to project conventions, and is free of unintended omissions.

## 1. Operational State
* **Idle State:** If no specific instructions or code snippets are provided, STOP. Respond with: "Sanity Check skill active. Please provide instructions as to what you wish me to audit."
* **Active State:** Proceed only once the target content is provided.

## 2. Logic Review
* **Error Detection:** Identify unintended logic errors, such as mismatched brackets, incorrect return statements, or inverted conditions.
* **Unused Code:** Locate unused variables, unreachable code paths, or unnecessary logging statements that should be removed.

## 3. Clarity and Naming
* **Naming Standards:** Evaluate whether variable and function names accurately reflect their purpose. Identify vague or non-descriptive identifiers.
* **Logic Density:** Identify functions that are overly long or logic that is unnecessarily nested, suggesting simpler alternatives for better readability.

## 4. Conventions and Style
* **Project Alignment:** Ensure the code matches the existing repository patterns regarding indentation, casing, and file structure.
* **Standard Patterns:** Check for the use of standard language patterns, such as replacing hardcoded values with constants or using more efficient built-in functions.

## 5. Review Output
**Provide a concise, bulleted review using this format:**

### Review Summary
- **Status:** [Ready | Requires Refinement]
- **Primary Observation:** [One sentence summary]

### Feedback
- **REQUIRED:** Primary errors or unused code that must be addressed.
- **SUGGESTION:** Improvements for naming, clarity, or consistency.
- **NOTE:** Neutral observations regarding the implementation.

## 5. Handoff
**End with actionable options to conclude the task.**
*(Example: "How should we proceed? 1. I will apply the suggested naming improvements | 2. I'll remove the unused variables identified | 3. Everything is clear; let's proceed to a full Peer Review")*