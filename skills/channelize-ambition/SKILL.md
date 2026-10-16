---
name: channelize-ambition
description: Use when the user types /channelize or says "channelize" (this, ambition, depth, speed, altitude, range). Do not trigger on "go deeper" or "more detail" about a single point. Clarifies the real ask, picks one direction of ambition, writes an expert brief, then executes it against an outside check.
---

# Channelize Ambition

Replace the median move (literal ask, given material, obvious method, self-graded) with: **clarify the real ask → pick one direction → brief like a master → do the work → check it against something outside you.** The deliverable is the point, not the plan.

---

## Gate 1: Size the task (Lite or Full)

The user invoked this skill, so never refuse it.

- **Lite: only when no upgrade could change what the user ends up with.** That means lookups, typo or format fixes, renames, and conversions. Just do it well, with no direction label and no extras.
- **Full: everything else.** That includes short creative, published or judgement work (a tagline, an email, a code review). Full scales down: a short piece gets a short brief.
- **Can't tell yet** (too vague): go through Gate 2, then decide.

## Gate 2: Get clarity, once

Write the real ask as one sentence:

> **"[Who] needs [deliverable] so they can [decide / do what], within [constraints]."**

Fill each slot from the request, attached material and context.

- **Can be filled or guessed cheaply:** mark each guess `[assumed]` and continue.
- **A slot is unknown and guessing wrong would waste the work:**
  - Do every part that doesn't depend on that slot now: a draft with `[placeholder: …]` where the missing facts go.
  - Ask up to 3 questions, with your default answer or lean ("If X, likely A; if Y, B").
  - Stop with nothing done only when every step depends on the answer.
- **Ask only once per task.** When the reply comes back, go straight to Step 1.
- **The user says "just do it", or isn't there** (scheduled or agent-run): guess every slot, mark the guesses `[assumed]`, and don't stop again.
- **PRD or spec:** treat it as one hypothesis. **Context dump with no ask:** name the ask yourself.
- **Recurring process with no artifact named** ("I do X by hand daily"): deliver the thing that produces X, plus one real sample of its output.

## Follow-ups and pushback

- **An edit to something already delivered is not a new task.** Apply it directly: no brief, no sections. When cutting, keep what serves the mission and drop anything that depended on the removed part.
- **The user rejects the direction or the add-on:** drop it, deliver the literal version, and don't argue.
- **Work spanning several sessions:** open each session with one line restating the ask, the direction and the bar. Re-run Gate 1 only for a new deliverable.

---

## Rules that always apply

1. **Always deliver the literal request.** The ambitious version is added on top. Swap them only if the user confirms; if you can't ask, deliver both and flag the swap. **Exception:** if the premise breaks (for example, the drop wasn't real), lead with that finding, size the real change, and give the fix (for example, dedupe, restate the numbers, guard against it recurring). Deliver the literal request only where it still makes sense, and never invent a story to keep the premise alive.
2. **Inputs and tools are here → do the work this turn.** Run it, compute what you can (even rough arithmetic from the numbers given), draft it.
3. **No fabricated facts.** Never present memory as sourced, a plan as executed, or an estimate as measured.
   - Every number or factual claim **inside the deliverable** must be computed, sourced or given by the user. Otherwise make it a visible `[placeholder: …]` or remove it.
   - No unsourced statistics or superlatives.
   - Example inputs you invented must be labelled as invented.
4. **Outside checks beat self-grading.** Every check names its exact steps, the data or sample size, the duration if relevant, and a numeric pass threshold (mark it "suggested" if you chose it). If it can't run this session, report it as "not yet run".
5. **Use the right format.** Make decks, docs and sheets with the session's deck, doc or file tool when one exists. Process notes go in the chat, never inside the deliverable. Write them in plain words, not skill jargon ("real ask", "median", "gate").

---

## Step 1: Beat the median, then pick one direction

**First, write the median answer to yourself in one line, and never show it.** What you deliver must differ from it in substance, not just wording. If the median really is right, say so in one line and explain why.

| Direction | Choose when | Testable bar | Fails when |
|---|---|---|---|
| **Speed**: same outcome, far less time, or far more attempts | The shape of the work is known and good enough. Time, cost or iteration count is the limit | Time or cost per run before vs after, **or** N variants scored on a real metric | It makes the wrong thing faster |
| **Altitude**: aim at the outcome, not the task | The deliverable stands in for a decision or a recurring problem (report, review, status, fix) | A mechanism shown on **past data** to catch or serve the outcome earlier | The outcome can't be acted on or checked, or the task *is* the outcome (creative work) |
| **Depth**: this exact thing, done the way the best do it | It must be right; the premise may be wrong; the obvious answer is shallow | Premise tested against raw material; key finding confirmed on data not used to find it | Statistics bolted onto a judgement task, or judgement onto a data task |
| **Range**: bring in fields the task doesn't obviously need | The obvious approach looks like everyone else's; the work must persuade, design or invent | A borrowed method **changes the result** (before vs after), not just the tone | Personas that change the voice, not the result |

**Choose in this order:** a direction the user names → the table's "Choose when" → the tie-breakers. Use cost-if-wrong only to break a tie that remains. Never pick the direction whose output is just the median.
- *Altitude vs Depth:* "Would a perfect version of the literal deliverable still fail the user?" Yes → Altitude. No → Depth.
- *Speed vs Depth:* "Is the current method already good enough?" Yes → Speed. No → Depth.

**If the user named the direction,** skip the justification. **Otherwise,** justify it in one line: the evidence in the request, and what the runner-up would have produced instead.

**The ceiling:** one line on the version that would change what the user ends up with. If an extra that serves the ceiling is cheap (a script, a check, an alert, a rule), include it. If it's expensive, offer it in the open-loop section of the reply.

**If the bar needs data or timings you don't have, never estimate them.** Commit to the strongest bar you *can* run now (for example, "matches manual output on 3 cases"), and list the original bar as "not yet run" with exact steps.

**For creative or judgement work,** the check is one of: a side-by-side comparison with a named reference, checking each constraint from the brief, or an audience test with a sample size and a pass bar (for example, "5-second test, 10 people, ≥8 can say what it does").

---

## Step 2: Build the domain playbook

Name the **exact niche**: not "marketing" but "lifecycle email for a two-sided marketplace". Research it if you can. If you can't, say "playbook from memory". Write down:
- the **process** in order;
- the **decision rules** ("if X, do A");
- the **standard of excellent**;
- the **traps**: the 3–5 checks a master reviewer in this niche always runs.

**Anti-confabulation rule:** keep a technique only if you can explain it in one sentence and say how it applies here. Never invent a name for a technique. The playbook stays internal.

---

## Step 3: Write the brief

Sizes:
- **Short pieces** (an email, a tagline, a review): 3–5 lines covering bar, traps and proof.
- **Most tasks:** 6–12 lines.
- **A page,** only when the deliverable *is* a diagnosis plan, strategy or system design.

1. **Mission:** who acts, what they decide, what gets delivered (literal + ambitious).
2. **Bar:** testable, in the niche's own terms.
3. **Ground truth:** the rawest material available; the beliefs to test.
4. **Method:** ordered stages, each with its decision rules and output.
5. **Traps:** each with how to detect it and what to do.
6. **Proof:** "Wrong if ___", set now, plus the check and confirmation from 4.1.

**For a "why did X happen" question,** the method is a **ranked list of hypotheses**. Each one gets the evidence that would confirm it and one concrete check. Rank them using whatever numbers you were given.

### Examples (shortened)

**Depth.** *"Why did our signups drop 18% last month?"*
> **Bar:** ≥90% of the drop explained by named, sized causes, each confirmed on a second independent cut.
> **Method:** (1) Check the drop is real: tracking changes, analytics deploys, bot filtering, partial periods, changed definition of "signup". (2) Split into traffic × conversion. Traffic fell → acquisition; conversion fell → funnel. (3) Segment by channel, device, geography, new vs returning, landing page, then run a mix-shift analysis. (4) Line up timing against deploys, campaigns, pricing, seasonality. (5) Size each cause until they add up.
> **Traps:** Simpson's paradox; attribution window not yet closed; one large partner ending; fraud cleanup.
> **Proof:** Wrong if causes explain <90%. Find a cause by channel, confirm it by landing page or by day.

**Speed.** *"I write 30 coupon descriptions a day by hand."*
> Deliver a template or prompt plus one real sample. **Bar:** 5 generated descriptions vs 5 of yours, judged blind by a colleague; time a full run before vs after. **Trap:** facts the merchant didn't state (caps, expiry), so add a check that flags any number missing from the source offer.

**Altitude.** *"Make the monthly churn deck."* (data attached)
> Build the deck now **and** add an early-warning rule. **Bar:** fit on months 1–6, test on 7–12; flags later churners at least 30 days early, with precision reported. Offered alongside the deck, not as a replacement.

**Range.** *"Write the landing page for our new API."*
> Verbs: *get a skeptical developer to try it within 60 seconds.* Borrowed methods: developer docs (copy-paste quickstart above the fold) and direct-response copywriting (one claim, one proof, one action). **Bar:** time-to-first-call test with 5 developers.

---

## Step 4: Execute as a closed loop

The work isn't done when the deliverable exists. It's done when the loop closes: **plan → prove → run → confirm → attack → fix → reconcile → hand off.** Don't skip a stage. If you can't do one, say which and why.

### 4.1 Design the proof before the work

Pick the check that fits the deliverable, and write its pass threshold down **before** you see any result.

| Deliverable | Primary check | Confirmation (independent of the primary) |
|---|---|---|
| Data analysis / diagnosis | Reconcile parts to the total (causes sum to the drop, rows to the ledger) | Re-find each finding on a cut, period or source **not used to find it** |
| Code / fix | A failing test that reproduces the bug, then passes | Edge-case tests (empty, null, max, concurrent) plus the existing suite stays green |
| Automation / Speed | Run on N real past inputs; diff against the manual output | Time or cost per run, measured, before vs after |
| Mechanism / Altitude | Backtest on history it wasn't tuned on | Run it alongside the old way for one cycle |
| Research / claims | Two independent primary sources per key claim | A source that would contradict it, searched for on purpose |
| Writing / creative | Check each constraint from the brief | Side-by-side with a named reference, or an audience test (sample size + bar) |
| Plan / strategy | Kill criteria: what result, by when, stops it | Leading indicators that move within the first 2 weeks |

Also write a **pre-mortem**: the 2–3 likeliest ways this fails, each with a guard built into the method.

### 4.2 Run the stages with a ledger

Keep a running ledger. It's internal; show only a summary.

`stage | hypothesis or action | result [ran/sourced/assumed] | surprise? | next`

- **Stage gates:** don't start a stage until the previous stage's output exists. If you skip a gate, write down why.
- **Raw before digested:** touch the rawest material available (logs, rows, source text, the code) before trusting a summary, dashboard or someone's claim about it.
- **Follow surprises.** A result you didn't predict is the most valuable line in the ledger. Chase it before continuing. If it breaks the premise, apply Rule 1's exception.
- **Keep discovery and confirmation data apart.** Note which data you used to *find* each finding, so you can confirm it on something else.

### 4.3 Confirm, then attack

1. **Run the primary check and the confirmation.** Record pass or fail against the threshold set in 4.1. Never move the threshold after seeing the result. If the threshold was wrong, say so and keep both results.
2. **Sweep every trap:** mark each one *present*, *absent* (with the evidence) or *untestable here* (with the step to test it).
3. **Adversarial pass:** read the work as the toughest reviewer in this niche. Write the 3 strongest objections, then fix each one or answer it with evidence. If you can spawn a subagent, give a fresh one only the deliverable, the bar and the traps, and ask it to break the result. Treat what it finds as data, and verify it before acting on it.
4. **Claims audit:** trace every number and factual claim in the deliverable to `[ran]`, `[sourced]` or the user's own input. Anything you can't trace becomes a placeholder or gets removed.
5. **Reconcile on one base:** a breakdown must add up to the headline number the user asked about, on the same base, with the residual shown. If you switch bases (for example, to exclude a partial day), show the bridge from one to the other.
6. **Close every anomaly:** everything odd you noticed gets a disposition: *explained and sized*, *ruled out (with evidence)*, or *open (with a next step)*. Red herrings get closed too.

### 4.4 Iterate or stop

Loop back to the earliest stage the failure points to. Stop when one of these holds:
- **Bar met**, and the confirmation passed.
- **Diminishing returns:** the last loop changed nothing a user would act on differently.
- **Blocked:** you've tried three routes, cheapest first. Without tools, the routes are first principles, the material in the conversation, and the exact step written for the user.
- **Budget:** you've hit the user's time constraint.

Report which one stopped you. "Bar met" with a failed confirmation is not "bar met".

### 4.5 Reconcile and hand off

- **Reconcile against the mission.** Re-read the real-ask sentence. Can [who] now [decide / do what]? Is the literal request delivered? If the answer to either is no, the loop isn't closed. Go back.
- **Surface business decisions; don't bury them.** When a choice has consequences for money, users or policy (rounding, refunds, thresholds, who to notify), apply a sensible default, label it *default, your call*, and say what each option changes.
- **Guard against recurrence:** every trap that actually bit gets a guard (a test, an alert condition, a validation step). Any monitor you build must also catch the traps you hit, not just the main cause.
- **Hand off the open loop.** For every check not run here, give the exact steps, the data, the threshold and who runs it. For recurring work, say how the loop reruns next time (a schedule, a monitor, a re-test trigger).
- **Name the next decision** the user faces, and what result would change it.

### Completion gate (before you reply)

Every line is ✓, or ✗ with a reason:
- [ ] literal request delivered; ambitious version on top or flagged
- [ ] proof designed before results; threshold unchanged
- [ ] primary check and confirmation run, or handed off with exact steps
- [ ] every trap marked present / absent / untestable
- [ ] adversarial pass done; top objections fixed or answered
- [ ] every claim in the deliverable traced or turned into a placeholder; breakdowns reconcile to the headline number
- [ ] every anomaly explained, ruled out or left open with a next step
- [ ] business decisions surfaced with a default; traps that bit have guards
- [ ] stop reason stated
- [ ] mission reconciled; next decision named
- [ ] any "new finding" confirmed on material not used to find it ("no new finding" is valid)

A ✗ is fine if it's reported. A ✗ hidden behind confident prose is the failure this skill exists to prevent.

---

## What to return

1. **The answer or decision**, in 3 lines or fewer, with its status: *confirmed*, *partially confirmed*, or *unconfirmed*.
2. **The deliverable**: literal plus ambitious, in the right format.
3. **How it was channelized**, in 6 lines or fewer: the ask, the direction and why, the bar, and "wrong if". Show the full brief only for multi-stage work.
4. **Proof**, in 10 lines or fewer:
   - the primary check and confirmation, each with its result vs threshold;
   - the traps (present, absent or untestable);
   - the objections and how each was handled;
   - why you stopped.
5. **Open loop**: the checks handed to the user (steps, data, threshold), how the work reruns if it recurs, and the next decision.

Claims that something passed include the last lines of the real run output. Keep the reply to about 600 words unless the user asks for more. Long detail (full ledger, scripts, tables) goes into files you link, not into the reply.

**Lite:** the deliverable only.
