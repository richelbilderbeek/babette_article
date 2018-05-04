# Associate Editor Comments to Author:
# Associate Editor
# Comments to the Author:

> we have now received two very qualified reviews for your manuscript on babette. 
> Overall, both reviews are very positive and consider your software and article worthy of publication in Methods in Ecology and Evolution. I agree with the reviewers' assessment. Nevertheless, before your manuscript can be accepted for publication, I ask you to follow the advice of the two reviewers carefully to address the minor issues raised by them.

Thank you for these nice words. We are happy to inform you we took care of all these issues.

> I agree with reviewer 2 that 
> more flexible node dating would be an worthwhile feature 
> to add to babette but that this addition could be left for future development. 
> Nevertheless I would find it helpful if implemented options for node dating could be described 
> in slightly more detail in the manuscript; 
> e.g. is an age constraint on the root the only option for node dating, 
> and can it be constrained by prior distributions, or only with a fixed age?

We are happy to announce, that while this manuscript was under review, node dating has been
added the package. Additionally, an example how to use this is added to the manuscript,
where we constrain the crown age by a tight normal distribution. The way to do so, using what is called
an MRCA prior, does have the option to specify monophyly, but we did not an example to demonstrate
this feature. 

> In addition I suggest to rephrase line 190 as babette does not allow all the functionality of Tracer (as stated on line 101), 
> and to fix a small error in the Acknowledgements, "for the sharing his FASTA files".

Fully agree, we did as suggested.

# Reviewer(s)' Comments to Author:
# Reviewer: 1
#
# Comments to the Corresponding Author

> Bilderbeek and Etienne have created a useful tool in babette, and have written a concise and informative paper describing what they have done and how it works. For this reason I am recommending acceptance with minor revisions, and would like to thank the authors for their contribution to phylogenetic software and the BEAST universe.

We are happy to hear our work is appreciated, as great care was taken to make the
article as short as possible, and the tool `babette` as useful as possible 

> Continuing the grand tradition of picking alliterative puns for BEAST program names, 
> the authors have gone with "babette". 
> I guess that this is in reference to one of the maids that cleans up after The Beast in the famous fairy tale. 
> I think the name is logical and clever. 
> However in the older Disney animated versions of the fairy tale the maid is a "sexy maid" stereotype, 
> and the authors seem to have directly copied the babette logo from the animation. 
> The authors should reconsider this, not only because of the notorious litigousness of Disney lawyers, 
> but also because the optics of using a "sexy maid" logo for scientific software is bad, 
> especially in 2018, especially from two male authors. 
> Sorry if this point gets interpreted as not having a sense of humor, but I think it should be addressed.

Thanks for mentioning this issue in such careful words. We thought it would be indeed a good idea
to follow this advice. All logo's (`babette` and the packages it relies on) have been redesigned (by
a girl actually) to be more neutral.  

> Page 3, line 29: "creates a posterior" is a bit of a glib description, 
> and could be reworded as "it uses a Bayesian statistical framework to estimate 
> the joint posterior distribution of estimated phylogenies and..."

Agreed. We use your words to improve the accuracy of the original wording.

> Page 4, lines 97-104: I think the authors are under-selling their own product here. 
> Of course babette does not support everything BEAUTi does at the moment, 
> but instead of highlighting all the things it cannot do, maybe focus more on what it can do. 
> For example, elucidate the 3 prior priors that are supported, 
> instead of saying that only 3 of 7 tree priors are not supported. 
> BEAST2 is very dynamic, and new tree priors are added all the time, 
> so it's likely that 7 will not be the correct number in the future. 
> Likewise I imagine babette will be improved upon and that when someone reads the paper in the future, 
> it may support more than 3 tree priors.

Thanks for pointing this out! Upon a re-read, the original wording did sound rather pessimistic.
The new wording specifies what has been done in a way that would still be correct for future readers.

> Section 3, Usage: there should be some indiciation of how to install babette, 
> or where to go to find out how to install it. 
> There seems to be a minor bug in the installation script: 
> when I installed babette using devtools as recommended, a bunch of dependencies were installed, 
> but when I ran "run" it required an R package "testthat" which was not one of those dependencies. 
> Also, is it possible to export the XML without running babette, 
> or to export the trees after babette has finished running? 
> Those would be two useful examples to include in this section.

How to install `babette` and BEAST2 (to a default location to be found by `babette`) are
added. The lack of `testthat` was embarassing, which proves that even a rigid testing
scheme cannot catch all mistakes. An early adopter of `babette` already pointed out
this error and it has been fixed. As, indeed, it is possible to only export the XML
normally created by BEAUti, this has been added, as we expect more people to desire this.

> Page 5, line 114: "run" is an extremely generic name for a function 
> and is likely to result in namespace conflicts with other packages. 
> Maybe there is a good reason to use this name that I am not aware of, 
> but if not, consider a more informative name. 

We completely agree. The function has been renamed to `bbt_run`, following the tradition of `tidyverse` packages
like `stringr`.

> Also the "beast2_jar_path" default is hardcoded to "~/Programs/beast2/lib/beast.jar", 
> which will be wrong for everyone except the authors of the program, 
> so I suggest that this argument should be required rather than optional. 
> At least here in "Usage" a value for this argument should be included.

This point has been mentioned by the rOpenSci code reviewers and has already been
addressed. Using the `rappdirs` package, folder names can be made paltform independent.
Since then, `babette` is tested to build and pass all test under both Windows and Linux.

> Page 6, lines 151-155: For parameters which are changed only using a scale operator, 
> and not a random walk or uniform operator, values less than 0 are never proposed. 
> So effectively the prior probability density for something like birth rate 
> with an unbounded uniform prior is 0 to infinity, 
> and having a non-zero probability on negative values is not a valid reason to use an exponential prior.

We agree and wrote down that indeed this is an invalid 
reason ('In practice, this [reasoning] does not matter'). As apparently we did not do a good enough job,
we decided to remove the incorrect reasoning altogether and only demonstrate how to use a different
prior distribution.

> Page 7, line 182: Reference to the Bouckaert & Vaughan blog post 
> doesn't seem relevant to this feature of babette. 
> How does babette fix the crown age? 
> Is it by scaling the root node of the tree to that age, 
> and removing all operators that can change the height of the root node? 
> However it is done, adding a brief explanation in the main text would be good.

The reference to the blog post has been removed. As per this comment, we describe how `babette`
fixes a phylogeny crown age, by -indeed- removing all operators that can change the height of the root node.

> Page 7, lines 178-184: Fixing the crown age 
> and estimating the clock is an alternative to fixing the clock 
> and estimating the crown age. 
> I would guess that for some studies this is a useful feature. 
> But in either case the same number of parameters are estimated, 
> so I don't think the overall variation across parameters will be reduced. 
> Also "theoretical" experiments is too vague. 
> Instead you could describe these experiments as 
> "where it is unnecessary to accurately model the uncertainty of absolute divergence times".

Agree. We added this superior wording to the manuscipt.

> Again, I would like to thank Bilderbeek and Etienne for their software and paper. 
> I am sure babette will be used by others researchers in the future, 
> and they will find it a valuable program.
> 
> Sincerely,
> 
> Huw Ogilvie

We would like to thank Ogilvie for his constructive feedback, that improved the
manuscript in ways that will make it more useful for more readers.

# Reviewer: 2
# Comments to the Corresponding Author

> As a user of both BEAST2 and R, 
> I agree here is a need for an implementation of BEAST2 in R. 
> My review is based solely on the documentation given by the authors, 
> including the youtube videos, as neither link nor package is available 
> and could therefore not be tested by me. 
> The proposed package babette package combines the base features of BEAST2,
> including standard models and priors, and the associates BEAUti and Tracer. 
> My judgement is that babette appears to be a useful tool, 
> especially when numerous replicates with slighly different settings are to be run.

We are happy to hear the reviewer sees the utility to the package. The reason
the link to CRAN did not work, is as it has not yet been accepted by CRAN. `babette` intends
to be submitted to CRAN, but only after an rOpenSci code review. Such a code review will
help the -overly busy- CRAN maintainers judge `babette` for its high-quality code.

> Personally I would like to see 
> node dating, 
> the multispecies coalescent,
> and ancestral state reconstruction implemented in babette,
> but I suppose this is for future versions of the package.

We are happy to announce, that while this manuscript was under review, node dating has been
added the package. Additionally, an example how to use this is added to the manuscript,
where we constrain the crown age by a tight normal distribution. The way to do so, using what is called
an MRCA prior, does have the option to specify monophyly, but we did not an example to demonstrate
this feature.

The other features have been added as feature requests on the `babette` GitHub. Which features
will first be added to `babette` is unsure, and will depend -as mentioned in the manuscript-
on user requests. We expect to receive a peak in user requests after the publication of this
manuscript, which will be the moment when a choice will be made what to implement next.

> I did not understand the "fix crown age option". 
> How exactly is the crown defined? 
> From the output it seems that it is the root age that is fixed, which is confusing.

We were unaware of the possibility of this confusion. 
We improved the wording by defining the crown age as the first divergence time, we
hope that resolves this matter. By our vocabulary, 
the root age would be the time a first species is observed, which we would call the stem age.

> Minor comments to the text:
> 
> L28. Tools exist for species phylogenies that are not trees as well, 
> so substitute "phylogenetic tree" with "phylogeny".

Agree. Fixed.

> [x] L31. "Figure ??" ?

Completely agree. Fixed.

> [x] L91. Is this the equivalent of running BEAST2 with an empty alignment?

No, that option mentioned was to validate a file to be valid (i.e. not corrupted or
have an incorrect XML structure). We decided to remove mentioning file validation,
as it would be only of minor interest to most. Instead, we mention the option
of installing BEAST2 from R.

> [x] L112. "or"

Well spotted! Fixed.
 
> [x] L227. Link to babette is not working.

Correct. Updated to point to the GitHub of `babette`.