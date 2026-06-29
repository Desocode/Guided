-- A tiny hand-written guide in RXPGuides format, to exercise the RXP12 engine.
-- Real RXP guide files (which call RXPGuides.RegisterGuide) can also be dropped
-- into this folder and listed in the .toc -- RXP12 shims that global.
RXP12.RegisterGuide([[
#name RXP12 Test Run
step
    >>Welcome to RXP12. This is the test guide. Click |cff33ff99Next >|r to advance, or drag the window to move it.
step
    .goto Elwynn Forest,49.5,42.6 >>Run to Northshire Abbey in Elwynn Forest.
step
    .accept 783 >>Accept |cffffff00[A Threat Within]|r from Marshal McBride. (auto-advances when the quest is in your log, if pfQuest is installed)
step
    .complete 783 >>Kill kobolds until |cffffff00[A Threat Within]|r shows complete.
step
    .turnin 783 >>Turn in |cffffff00[A Threat Within]|r to Marshal McBride.
step
    #level 3
    >>Keep questing until you reach |cff88ccfflevel 3|r, then this step auto-advances.
step
    >>End of the test guide. If you got here, parsing, stepping, saving and (with pfQuest) auto-advance all work.
]])
