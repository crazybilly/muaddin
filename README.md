# RStudio Addins for Millikin's ADC

An R package providing RStudio addins. Built primarily for use in Millikin's Alumni and Development Center.

Currently, Source With Beep is not working: there's a couple problems:

1. If you're on the console, getActiveDocumentContext() returns that you're on the console, not the document, and there's no way to move focus to the active document. Trying to save the console and then source it crashes R.

2. There's no (elegant) way to save the active document before sourcing it. It's possible, but it's a royal pain and you'll get the "your document has changed on disk" dialog. 

## Available Addins

- Source with Beep - a function that mirrors RStudio's `source with echo()`, but beeps at the end (using beepr::beep() ), so you don't end up spending years on Facebook when you're waiting for a job to run.
