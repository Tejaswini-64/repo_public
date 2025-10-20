# repo_public

# System Monitor Project

## Description
This project contains Bash scripts to periodically collect system performance metrics, including:
- CPU Usage
- Memory Usage
- Disk Usage
- System Uptime
- Load Average

## Script Descriptions
- `collect_metrics.sh`: Captures system metrics every 15 minutes and stores them in `reports/metrics_<timestamp>.txt`.
- `archive_metrics.sh`: Runs daily to archive the day's reports into `archive/metrics_<date>.tar.gz`.

## Cron Jobs
- **Every 15 minutes**: `collect_metrics.sh` is executed.
- **Every 24 hours at 23:59**: `archive_metrics.sh` compresses the day's reports.

## Git Ignore
- `reports/` and `archive/` are excluded from version control via `.gitignore`.

