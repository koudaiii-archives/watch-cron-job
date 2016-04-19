## watch cron job

```
docker pull koudaiii/watch-cron-job
docker run -e APP=app -e ENV=production -e ROLE=cron -e DATADOG_API_KEY=XXXXXXXXX koudaiii/watch-cron-job:latest
```
