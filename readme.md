To cleanup existing resources from old shared vpc hub environment in GCP environment.

To ignore large files:
git filter-branch -f --index-filter 'git rm --cached -r --ignore-unmatch .terraform/'
