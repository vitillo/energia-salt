energia-salt
============

Saltstack cluster configuration for energia's distributed power benchmark.

1. Copy repository in /srv/salt on the server machine
2. Run the following commands:

```bash
salt-master —log-level=all
salt-run winrepo.genrepo
salt '*' pkg.refresh_db
salt '*' state.highstate -v
```
