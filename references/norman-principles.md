# Norman Principles — Extended Reference

Source: *The Design of Everyday Things*, Don Norman (Revised Edition, 2013)

---

## 1. Discoverability
**Definition:** The degree to which a user can determine what actions are possible and the current state of the device or system without prior knowledge or instruction.

**In digital UI:** Navigation items that are hidden until hover, actions buried in context menus, features with no entry point visible in the current state.

**Common failures:**
- Key actions only accessible via keyboard shortcut with no visible hint
- Empty states with no call to action
- Settings or advanced options with zero surface area on the main UI

**Good signal:** A first-time user can identify at least 80% of available actions within 10 seconds of seeing a screen.

---

## 2. Feedback
**Definition:** Information sent back to the person about what action has been done and what has been accomplished — allowing the person to continue with the activity.

**In digital UI:** Button states, loading indicators, success/error messages, progress bars, micro-animations that confirm input was received.

**Common failures:**
- Form submission with no visual response (spinner, confirmation, or redirect)
- Destructive actions with no undo or confirmation
- Async operations with no progress indication
- State changes that happen silently (toggle that doesn't animate)

**Good signal:** After every user action, something on screen changes within 100ms — even if the full result takes longer.

---

## 3. Conceptual Model
**Definition:** The explanation, usually highly simplified, of how something works. The designer's model is what they intend; the user's model is what they believe. A good design makes these match.

**In digital UI:** Folder metaphors for file storage, inbox as a physical in-tray, shopping cart/basket, drafts as unsent letters.

**Common failures:**
- "Archive" vs "Delete" distinction not communicated — users fear both do the same thing
- Workspace/project/team hierarchy that doesn't match how the business actually organises work
- Sync behaviour that contradicts user expectation (edits apply globally when user expected local)

**Good signal:** A user can predict what will happen before they take an action — because the product behaves the way the metaphor implies.

---

## 4. Affordances
**Definition:** The relationship between a physical or digital object and a person — specifically, the perceived and actual properties that determine how the object could possibly be used.

**Note:** Norman later clarified that in UI, *perceived* affordance is what matters — what the user believes is possible, not what's technically possible.

**In digital UI:** A raised, bordered button looks pressable. A flat text link looks tappable. A drag handle looks draggable.

**Common failures:**
- Flat design that removes all visual weight — everything looks equally interactive (or not interactive)
- Clickable areas with no visual differentiation from static content
- Interactive images or charts with no indication they respond to input

**Good signal:** Users attempt to interact with interactive elements and don't attempt to interact with static ones — without any instruction.

---

## 5. Signifiers
**Definition:** Perceptible signals that communicate appropriate behaviour — where to act, what to do. Signifiers are explicit; affordances are perceived. A door handle is an affordance; the label "PUSH" is a signifier.

**In digital UI:** Placeholder text, labels, icons with text, tooltip triggers, chevrons indicating expandability, underlines on links.

**Common failures:**
- Icon-only navigation with no labels (especially on desktop)
- Search bar with no icon or placeholder — just an empty rectangle
- Expandable sections with no visual cue (no chevron, no +, no underline)
- "Swipe to dismiss" with no visible signifier

**Good signal:** The user knows where to click, tap, or type without hovering or guessing — because the signifier makes it explicit.

---

## 6. Mapping
**Definition:** The relationship between controls and their results. Natural mapping uses spatial analogy — controls should be positioned to mirror the effect they produce in the world.

**In digital UI:** Volume sliders that go up to increase, left-to-right navigation that moves content left-to-right, stacked list items where top = most recent.

**Common failures:**
- Horizontal slider that controls a vertical value
- Settings panel where related options are visually separated by unrelated ones
- "Next" button on the left, "Back" on the right
- Grid of items where sort order doesn't match visual weight hierarchy

**Good signal:** The position, size, and grouping of controls mirrors the structure and priority of their effects — no legend needed.

---

## 7. Constraints
**Definition:** Restricting the possible actions that can be performed. Well-applied constraints guide users to correct behaviour and prevent errors before they happen.

**Types (Norman):**
- **Physical** — a UI element is greyed out and unclickable until preconditions are met
- **Logical** — a date picker won't let you select a past date for a future event
- **Semantic** — a "Delete Account" action is placed at the bottom of a danger zone, away from everyday settings
- **Cultural** — red for error, green for success (though culturally variable)

**Common failures:**
- Submit button enabled before required fields are complete (no logical constraint)
- Destructive actions at the same visual weight as safe ones (no semantic constraint)
- No input validation until after submission (constraint applied too late)
- Constraints that block without explaining why (error state with no message)

**Good signal:** Users complete tasks without encountering errors — not because they're careful, but because the UI made the wrong path unavailable or clearly marked.

---

## Cross-Principle Patterns

### The Gulf of Evaluation (Norman)
The difficulty of determining the state of a system — combines Feedback + Discoverability + Conceptual Model.
*Symptom:* User asks "did that work?" after taking an action.

### The Gulf of Execution (Norman)
The difficulty of figuring out how to make something happen — combines Affordances + Signifiers + Mapping + Constraints.
*Symptom:* User scans the screen looking for where to click, or abandons a task.

### Error-Inducing Design
Any combination of weak Constraints + weak Feedback + poor Mapping.
*Symptom:* Users make the same mistake repeatedly, or succeed only by luck.
