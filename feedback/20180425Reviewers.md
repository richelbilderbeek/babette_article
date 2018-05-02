# 2018-04-25: Methods in Ecology and Evolution reviewers' feedback

From: Methods in Ecology and Evolution <onbehalfof@manuscriptcentral.com>
Date: 16 April 2018 at 21:35:06 +02:00
Subject: Methods in Ecology and Evolution - Decision on Manuscript ID MEE-18-03-185
To: r.j.c.bilderbeek
Cc: Michael Matschiner`

16-Apr-2018

MEE-18-03-185 babette: BEAUti 2, BEAST2 and Tracer for R

> Dear Dr Richèl Bilderbeek,
> 
> Thank you for submitting your manuscript to Methods in Ecology and Evolution. I have now received the reviewers' reports and a recommendation from the Associate Editor who handled the review process. Copies of their reports are included below. As you will see, the reviewers are positive about the value of the work but have also made a number of suggestions for improvement. I have considered your paper in light of the comments received and I would like to invite you to prepare a minor revision.
> 
> In your revision, please make sure that you take full account of the above comments and those made in the reports below. Please note that Methods in Ecology and Evolution does not automatically accept papers after revision, and an invitation to revise a manuscript does not represent commitment to eventual publication on our part. We will reject revised manuscripts if they are returned without satisfactory responses to the reviewers' comments. When returning the revised paper, please show point-by-point how you have dealt with the various comments in the appropriate section of the submission form.
> 
> Please return your revision by 07-May-2018. If you need longer, please let us know so we can update our system accordingly.
> We look forward to hearing from you in due course.
> 
> Sincerely,
> 
> Dr Lee Hsiang Liow
> Senior Editor, Methods in Ecology and Evolution

Reply to:
Mr Chris Grieves
Methods in Ecology and Evolution Editorial Office
coordinator@methodsinecologyandevolution.org


Associate Editor Comments to Author:
Associate Editor
Comments to the Author:

> Dear Richèl, dear Rampal,
> 
> we have now received two very qualified reviews for your manuscript on babette. 
> Overall, both reviews are very positive and consider your software and article worthy of publication in Methods in Ecology and Evolution. I agree with the reviewers' assessment. Nevertheless, before your manuscript can be accepted for publication, I ask you to follow the advice of the two reviewers carefully to address the minor issues raised by them.
> 
> [x] I agree with reviewer 2 that 
>     more flexible node dating would be an worthwhile feature 
>     to add to babette but that this addition could be left for future development. 
>     Nevertheless I would find it helpful if implemented options for node dating could be described 
>     in slightly more detail in the manuscript; 
>     e.g. is an age constraint on the root the only option for node dating, 
>     and can it be constrained by prior distributions, or only with a fixed age?

> [x] In addition I suggest to rephrase line 190 as babette does not allow all the functionality of Tracer (as stated on line 101), 
> [x] and to fix a small error in the Acknowledgements, "for the sharing his FASTA files".
> 
> I am looking forward to receive your revised manuscript.

Reviewer(s)' Comments to Author:
Reviewer: 1

Comments to the Corresponding Author

> Bilderbeek and Etienne have created a useful tool in babette, and have written a concise and informative paper describing what they have done and how it works. For this reason I am recommending acceptance with minor revisions, and would like to thank the authors for their contribution to phylogenetic software and the BEAST universe.

Minor comments:

> [x] Continuing the grand tradition of picking alliterative puns for BEAST program names, 
>     the authors have gone with "babette". 
>     I guess that this is in reference to one of the maids that cleans up after The Beast in the famous fairy tale. 
>     I think the name is logical and clever. 
>     However in the older Disney animated versions of the fairy tale the maid is a "sexy maid" stereotype, 
>     and the authors seem to have directly copied the babette logo from the animation. 
>     The authors should reconsider this, not only because of the notorious litigousness of Disney lawyers, 
>     but also because the optics of using a "sexy maid" logo for scientific software is bad, 
>     especially in 2018, especially from two male authors. 
>     Sorry if this point gets interpreted as not having a sense of humor, but I think it should be addressed.
> 
> [x] Page 3, line 29: "creates a posterior" is a bit of a glib description, 
>     and could be reworded as "it uses a Bayesian statistical framework to estimate 
>     the joint posterior distribution of estimated phylogenies and..."
> 
> Page 4, lines 97-104: I think the authors are under-selling their own product here. Of course babette does not support everything BEAUTi does at the moment, but instead of highlighting all the things it cannot do, maybe focus more on what it can do. For example, elucidate the 3 prior priors that are supported, instead of saying that only 3 of 7 tree priors are not supported. BEAST2 is very dynamic, and new tree priors are added all the time, so it's likely that 7 will not be the correct number in the future. Likewise I imagine babette will be improved upon and that when someone reads the paper in the future, it may support more than 3 tree priors.
> 
> Section 3, Usage: there should be some indiciation of how to install babette, or where to go to find out how to install it. There seems to be a minor bug in the installation script: when I installed babette using devtools as recommended, a bunch of dependencies were installed, but when I ran "run" it required an R package "testthat" which was not one of those dependencies. Also, is it possible to export the XML without running babette, or to export the trees after babette has finished running? Those would be two useful examples to include in this section.
> 
> Page 5, line 114: "run" is an extremely generic name for a function and is likely to result in namespace conflicts with other packages. Maybe there is a good reason to use this name that I am not aware of, but if not, consider a more informative name. Also the "beast2_jar_path" default is hardcoded to "~/Programs/beast2/lib/beast.jar", which will be wrong for everyone except the authors of the program, so I suggest that this argument should be required rather than optional. At least here in "Usage" a value for this argument should be included.
> 
> Page 6, lines 151-155: For parameters which are changed only using a scale operator, and not a random walk or uniform operator, values less than 0 are never proposed. So effectively the prior probability density for something like birth rate with an unbounded uniform prior is 0 to infinity, and having a non-zero probability on negative values is not a valid reason to use an exponential prior.
> 
> Page 7, line 182: Reference to the Bouckaert & Vaughan blog post doesn't seem relevant to this feature of babette. How does babette fix the crown age? Is it by scaling the root node of the tree to that age, and removing all operators that can change the height of the root node? However it is done, adding a brief explanation in the main text would be good.
> 
> Page 7, lines 178-184: Fixing the crown age and estimating the clock is an alternative to fixing the clock and estimating the crown age. I would guess that for some studies this is a useful feature. But in either case the same number of parameters are estimated, so I don't think the overall variation across parameters will be reduced. Also "theoretical" experiments is too vague. Instead you could describe these experiments as "where it is unnecessary to accurately model the uncertainty of absolute divergence times".
> 
> Again, I would like to thank Bilderbeek and Etienne for their software and paper. I am sure babette will be used by others researchers in the future, and they will find it a valuable program.
> 
> Sincerely,
> 
> Huw Ogilvie

Reviewer: 2

Comments to the Corresponding Author

> As a user of both BEAST2 and R, I agree here is a need for an implementation of BEAST2 in R. My review is based solely on the documentation given by the authors, including the youtube videos, as neither link nor package is available and could therefore not be tested by me. The proposed package babette package combines the base features of BEAST2, including standard models and priors, and the associates BEAUti and Tracer. My judgement is that babette appears to be a useful tool, especially when numerous replicates with slighly different settings are to be run.
> 
> Personally I would like to see node dating, the multispecies coalescent, and ancestral state reconstruction implemented in babette, but I suppose this is for future versions of the package.
> 
> I did not understand the "fix crown age option". How exactly is the crown defined? From the output it seems that it is the root age that is fixed, which is confusing.
> 
> 
> Minor comments to the text:
> 
> L28. Tools exist for species phylogenies that are not trees as well, so substitute "phylogenetic tree" with "phylogeny".
> 
> L31. "Figure ??" ?
> 
> L91. Is this the equivalent of running BEAST2 with an empty alignment?
> 
> L112. "or"
> 
> L227. Link to babette is not working.
