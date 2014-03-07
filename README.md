energia-salt
============

Saltstack cluster configuration for energia's distributed power benchmark.

1. Copy repository in /srv/salt on the server machine
2. Run the salt-master and configure the minions:

```bash
salt-master —log-level=all
salt-run winrepo.genrepo
salt '*' pkg.refresh_db
salt '*' state.highstate -v
```

3. Start the benchmark on the master node:
```bash
python benchmark.py --is_server
```
