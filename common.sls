install commonpackages:
  pkg.installed:
    - pkgs:
      - deltarpm
      - chrony
      - iptables-services
      - unbound
      - java-11-openjdk-devel
  
chronyd:
  service.running:
    - enable: True
    - reload: True 

iptables:
  service.running:
    - enable: True
    - reload: True

unbound:
  service.running:
    - enable: True
    - reload: True

firewalld:
  service.disabled:
    - enabled: True

mask_runtime_firewalld:
  service.masked:
    - name: firewalld
    - runtime: True

UTC:
  timezone.system:
    - utc: True


