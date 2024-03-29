Checklist for production:
- Secure accounts: Hosting, Domain Name, Email Box, GA. Ensure two factor auth is used. Do not delegate ownership.
- Periodic Backups. Daily backups protect from full crash. Backup retention period should be large enough to protect from data corruption which might be noticed with significant delay. E.g. 1 month.
- Monitoring of service availability. Options: updown.io, honeybadger.io, newrelic.com
- Monitoring of server resources: RAM and Disk space. Alert when 90%.
- Monitoring of responce time (visible to users!). Alert when > 2 seconds.
- Statistics of requests per period (per minute, per hour) - cannot be done by Google Analitics. 
- SSL auto renewal.
- Ensure emails are sent from correct address. check email correctness (links, translations). 
- Configure email SPF, DKM.
- Log rotation to save disk space.
- Captcha for registration.
- Email confirmation for registratuin.
- Track production errors in Honeybadger.io.
