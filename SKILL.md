---
name: norman-design-audit
description: >
  Analyse UI/UX design through Don Norman's design principles from The Design of Everyday Things.
  Use this skill whenever a user uploads a screenshot, describes a UI, shares a component, flow, form,
  layout, or product feature and wants design critique, a design review, a heuristic audit, or usability
  feedback. Also trigger when the user mentions affordances, signifiers, feedback, mapping, constraints,
  discoverability, or conceptual models in a design context. The skill automatically selects the right
  audit mode based on what is being analysed — no need for the user to name the mode explicitly.
  Trigger even for casual requests like "what's wrong with this screen" or "does this make sense to users".
---

# Norman Design Audit

A structured design critique framework based on Don Norman's principles from *The Design of Everyday Things* (revised edition). Automatically selects an audit mode based on the design artifact provided, then runs a full 7-principle analysis led by the mode's primary principle.

---

## Audit Modes

Select the mode that best matches the artifact. When in doubt, default to **Affordance Check**.

| Mode | Primary Principle | Best For |
|---|---|---|
| **Signifier Scan** | Signifiers | Isolated component (button, input, nav item, icon, card) |
| **Affordance Check** | Affordances | Single screen or UI state |
| **Feedback Loop** | Feedback | Multi-step flow, interaction sequence, or animated state |
| **Mapping Review** | Mapping | Layout, navigation, IA, dashboard, settings panel |
| **Constraint Audit** | Constraints | Forms, onboarding, permission flows, decision points |
| **Conceptual Model** | Conceptual Model | Full feature, product section, or end-to-end user journey |

---

## The 7 Norman Principles

Apply all 7 in every audit. The selected mode's principle leads the analysis and gets the most depth.

1. **Discoverability** — Can the user find out what actions are possible without trial and error?
2. **Feedback** — Does the system acknowledge every action clearly and immediately?
3. **Conceptual Model** — Does the product match the user's mental model of how it should work?
4. **Affordances** — Do elements communicate what interactions they support?
5. **Signifiers** — Are there clear perceptible cues guiding the user where to act?
6. **Mapping** — Do spatial/visual relationships match the user's expectations and real-world conventions?
7. **Constraints** — Are limits used to prevent errors and guide the user toward correct actions?

---

## Output Format

Structure output as follows. Write sharp — peer-level for the designer, legible for a PM or dev in the room.

```
## [Mode Name] — [Artifact Description]

**Mode:** [Mode Name]
**Primary Principle:** [Principle Name]
**Artifact:** [Brief description of what was analyzed]

---

### [Primary Principle Name] ← Lead this section, most depth here
**Finding:** [What's working or broken]
**Why it matters:** [Norman framing — 1 sentence]
**Recommendation:** [Concrete, actionable fix]

---

### Discoverability
**Finding:** ...
**Recommendation:** ...

### Feedback
**Finding:** ...
**Recommendation:** ...

### Conceptual Model
**Finding:** ...
**Recommendation:** ...

### Affordances
**Finding:** ...
**Recommendation:** ...

### Signifiers
**Finding:** ...
**Recommendation:** ...

### Mapping
**Finding:** ...
**Recommendation:** ...

### Constraints
**Finding:** ...
**Recommendation:** ...

---

### Priority Hits
> Flag the 2–3 issues most likely to cause user errors or confusion. Label with:
> 🔴 Critical — breaks the interaction
> 🟡 Friction — slows or confuses
> 🟢 Polish — refinement, not blocking

---

### Dev / PM Notes  ← Only include if there's something worth flagging
**Dev:** [Technical callout if the fix requires implementation detail]
**PM:** [Rationale framing if a recommendation needs justification for product decisions]
```

---

## Behavior Rules

- **Auto-detect mode** from the artifact. Don't ask the user to pick a mode unless the artifact is ambiguous.
- **Lead with the primary principle** — give it the most space and specificity. The other 6 are concise but complete.
- **Never skip a principle** — even if there's nothing wrong, note what's working and why.
- **Tone:** Direct, peer-level for the designer. No hedging, no jargon, no filler. PM/dev callouts are structured separately so they don't dilute the design critique.
- **Recommendations must be actionable** — not "improve the button" but "add a visible label below the icon to function as a signifier; the icon alone has no shared convention."
- **Priority Hits are mandatory** — always close with the top 2–3 issues ranked by severity.
- **If given an image:** Describe what you observe before critiquing. Don't assume intent — flag ambiguity as a finding.
- **If given a text description:** Ask one clarifying question max if critical context is missing. Otherwise proceed.

---

## Mode Selection Guide

### Signifier Scan
Triggered by: a single UI element, component, icon, button, input field, toggle, or chip.
Lead question: *"Does this element tell the user what it does and how to use it without labels or instructions?"*

### Affordance Check
Triggered by: a full screen, app state, modal, or page.
Lead question: *"What actions does this screen make feel possible — and what does it hide?"*

### Feedback Loop
Triggered by: a multi-step sequence, interaction pattern, transition, loading state, error state, or animated flow.
Lead question: *"At every moment in this sequence, does the user know what just happened and what comes next?"*

### Mapping Review
Triggered by: navigation, layout, dashboard, settings, or any arrangement where spatial logic matters.
Lead question: *"Do the positions and groupings of elements match how users expect them to relate?"*

### Constraint Audit
Triggered by: a form, onboarding step, permission dialog, or checkout flow.
Lead question: *"Are constraints helping users succeed, or are they creating friction without purpose?"*

### Conceptual Model
Triggered by: a full feature, product section, or end-to-end journey description.
Lead question: *"Does the product's internal logic match what users already believe about how this type of thing works?"*

---

## Reference
Read `references/norman-principles.md` for extended principle definitions, examples, and common failure patterns — consult when a finding needs deeper grounding or when the user asks for explanation of a principle.
