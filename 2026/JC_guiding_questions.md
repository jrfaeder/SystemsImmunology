# Journal club: guiding questions

**Paper:** Martí-Baena Q, Segura-Morales C, García-Ojalvo J, Serrano L. *Mechanistic pathway modeling reveals how IL-10 generates pleiotropic immune responses.* bioRxiv (2026). <https://doi.org/10.64898/2026.06.02.729479>

Use the three questions below to organize your presentation and the discussion that follows. You don't need to answer them in order. Each one connects to an idea from the mechanistic modeling lecture.

**1. Which mechanism, and why does it work?**
The authors compare three hypotheses (Baseline, Receptor Memory, and a kinetic-proofreading model) for why STAT1 depends more on IL-10RB binding than STAT3 does, and they use ABC-SMC to choose among them. Explain in plain terms *why* the Receptor Memory topology buffers STAT3. Which rate constants set how long a dissociated IL-10RA keeps signaling, and what do the inferred values imply? Compare this approach with the sequential model rejection of Lever et al. (2016) from lecture. How complete was the set of hypotheses, and what plausible mechanism was not tested? Finally, propose one experiment whose outcome would differ between the Receptor Memory and Baseline models, and check whether the STAT3 buffering holds equally in every cell type shown (compare Figures 3A and 3E).

**2. What is left out of the model, and does it matter?**
The model has no negative feedback, yet SOCS proteins are induced by IL-10 signaling. To reproduce the decline in pSTAT at high IL-10 doses, the authors instead invoke sequestration of IL-10RB by free ligand, which requires a binding rate above published values (see Discussion). Compare the dose range of this decline with physiological IL-10 concentrations. How would you add SOCS feedback with as few new parameters as possible? What would it predict for the dose response and for time courses, and how could it be tested? Relate this to what we discussed about feedback versus feedforward architectures and bell-shaped dose responses.

**3. How strong is the chain from receptor binding to gene expression?**
The transcriptomic conclusions rest on a chain of inferences: protein copy numbers estimated from RNA, model-predicted pSTAT levels, variation in receptor expression *across cell types* used as a stand-in for variation in IL-10 *dose* within one cell type, and logistic fits giving gene-specific pSTAT50 thresholds. Identify the weakest link and explain why. How would you check whether the low, intermediate, and high threshold groups are robust? What would a decisive experiment look like, for example a dose-resolved perturbation in a single cell type, or STAT1- or STAT3-deficient cells? If the conclusions hold, what do they imply for engineering IL-10 variants such as Super-10?
