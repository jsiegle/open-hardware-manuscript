Top-level opinion: "Ephys hardware development should be largely open-source. This benefits end-users who want better tools, and developer-scientists who need new tech to answer their science questions."

Target audience: Scientists, division-of-labor proponents, closed-source model proponents

1. Introduction

 - Scientific need creates demand for better recording (v.a.v. channel density, sig quality, motion tracking, stim, & realtime analys)
 - Need is typically met by companies focusing on tech. Business model is proprietary / subscription-based, source closed
 - Open-source dev has benefits (cross-checking, cost, synergistic work), but limited by know-how and access to big fab
 - New fab tech, maker movement, and collaborative platforms removed the limits; scientist-lead tech dev >= companies'; time to embrace open source & enjoy the benefits
 - ?(Optional) Competition between labs drove purchase of tech from companies in past. Now collaborative sense in open-source dev may spill into open-access science/data, with largely overlapping benefits to those from open source software

2. Body

A. Electrophysiology can especially benefit from open-source
- The technology is simple; we've known how to efficiently amplify and digitize electrical signals for decades
- What's changing rapidly is the front-end (what do we put in the brain?) and the software (what type of information to we extract from the signals?); not feasible for companies to keep up with the cutting edge; EXAMPLE: optogenetics
- Ephys labs tend to be technically savvy; TONS of development going on behind-the-scenes; almost none of this is shared with the wider community

B. Ideal situation: common standards and modular architecture, with development shared between companies and labs
- Still a role for commercial entities to refine and distribute tools; but currently they lag, rather than lead, technology development
- Software is also key—determines how "open" the hardware actually is; i.e., how easy it is for the end-user to modify its functionality

C. Why is this happening now?
- There have been a number of attempts at creating a widely used multichannel system. 
-- A/D (1990's)
-- MEABench (2005)
-- NeuroRighter (2009 - present)
-- ArtE (??)
-- Open-ephys (
-- The adoption of these systems has gone from modest for the first versions (10's of users) to  many hundreds of users and distribution comparable to commercial systems. Why now?

- The usability of these systems, aside from improving on each-other's designs, is also attributed to the parallel development in four sectors that are not directly to neuroscience:
-- Hardware standards
-- Cheap computation for use in huge numbers of embeeded devices that simply were not around at the time of A/D or even MEABench (smart phones, smart cars, smart toasters, ...)
-- The explosion of the open-source hardware movement in general. 
--- Started with PIC
--- Reins taken by Arduino
--- Now there is an explosion: raspberry pi, Beaglebone, maple, etc.
-- The explosion of tools for 'social design'
--- Github and git are the best example
--- Wikis for documentation

- Together, all this means that the processing tools are (1) faster, and (2) easier to use, for (3) less money than ever before. There are shit-loads of tools for collaborative design. And, proper documentation is _expected_ in serious open-source projects. 

D. Pros/cons of the open-source model

- User support
-- Forum based support can be more responsive than dedicated support used by industry, but only if a critical mass of competent users are reached.
- Documentation
-- This can go either way and simply depends on the people running the show. OE and NeuroRighter have a level of detail in their documentation that far exceeds most commercial options
- Performance
-- This is increasingly determined at a level that neither the open-source or commmercial options control. e.g. we all use the same intan chips, and those are what largely determine recording quality
- Extensibility
-- No question on this one.
- Polish
-- Depends on the project. Also, some people don't like not being able to see whats going on. (e.g. what the hell is going on with the pulse-pal pcb. my good, im glad the thing works because looking at the pcb i would not guess it does...)
- Price
-- This is especially true of 'small' labs that are currently excluded from 'high-tech' neuroscience research because they cannot shell out 50k for a multichannel data acquisition system, even when budgets are not that tight. For instance labs in 'developing' countries (most of NeuroRighter's users are in China and India, for instance).


3. Conclusion

Open should be the rule for large-scale recording, rather than the exception
If we can convince scientists and companies to support open standards, we'll spend less time on redundant hardware and software development
There is a place for closed-source hardware, but scientists should demand openness wherever possible, especially when it comes to areas that are rapidly transforming
Closed-source is OK, however, as long as you know how to interface with it (and the interfaces are at the right level of abstraction)
We are not opposed to closed-source tools, only ones that hinder progress (what are our criteria for this, exactly?)

Key takeaway: open tools will ultimately result in less time spent on development, but only if they are actively promoted and financially supported by the labs/funding agencies that benefit from them
