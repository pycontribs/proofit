# proofit

ProofIt checks presence of specific PR labels in order to assure creation of meaningful release notes andwith and proper use of semantic versioning. 

ProofIt is inspired from tools below and aims to combine their functionality in a single action. We also aim to make it able to load its settings from a single github repository, ones that would apply for the entire organization.

* [Release Drafter](https://github.com/marketplace/actions/release-drafter) - which uses a configured set of labels to update github release notes
* [Match PR Label](https://github.com/marketplace/actions/match-pr-label) - require presence of at least one label from a specific list
