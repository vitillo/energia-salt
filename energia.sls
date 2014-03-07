chrome:
  pkg:
    - installed

firefox:
  pkg:
    - installed

# WinPython is a standalone package...
winpython:
{% if not salt['file.file_exists']("C:\WinPython\Spyder.exe") %}
  pkg:
    - installed
{% endif %}
  win_path:
    - exists
    - name: C:\WinPython\python-3.3.3.amd64 # once salt's __context___ bug is fixed use regexp to find version number

vcredist2010:
  pkg.installed

powergadget:
  pkg:
    - installed
  file:
    - rename
    - name: C:\PowerGadget\PowerLog.exe
    - source: C:\PowerGadget\PowerLog3.0.exe # once salt's __context___ bug is fixed use regexp to find version number
  win_path:
    - exists
    - name: C:\PowerGadget

bla:
  file.managed:
    - name: C:\BLA\BLA.exe
    - source: salt://win/repo/BLA/BLA.exe
  win_path:
    - exists
    - name: C:\BLA

energia:
  git.latest:
    - name: https://github.com/vitillo/energia
    - target: C:\energia
  cmd.run:
    - name: start python "C:\energia\benchmark.py -a {{grains['master']}}"
    - template: jinja
    - unless: WMIC path win32_process get Commandline | grep [b]enchmark.py
    - shell: 'powershell'
