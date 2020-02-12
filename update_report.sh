python3 -m venv .
source ./bin/activate
jira-agile-metrics --output-directory metrics config_progress_report_only.yaml

# Push new report to GitHub
cp metrics/progress-teams.html index.html
git add metrics/*
git add index.html
git commit -m “Updating Report at $(date)”
git push -u origin master
