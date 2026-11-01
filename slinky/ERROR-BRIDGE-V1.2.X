No kind clusters found.
Creating cluster "kind" ...
 ✓ Ensuring node image (kindest/node:v1.37.0) 🖼️
 ✓ Preparing nodes 📦 📦 📦 📦 📦 📦 📦 📦 📦 📦  
 ✓ Writing configuration 📜 
 ✗ Starting control-plane 🕹️ 
Deleted nodes: ["kind-worker4" "kind-worker3" "kind-worker2" "kind-worker8" "kind-worker" "kind-worker6" "kind-worker7" "kind-worker9" "kind-worker5" "kind-control-plane"]
ERROR: failed to create cluster: failed to init node with kubeadm: command "docker exec --privileged kind-control-plane kubeadm init --config=/kind/kubeadm.conf --skip-token-print --v=6" failed with error: exit status 1
Command Output: I1101 00:57:05.046081     262 initconfiguration.go:262] loading configuration from "/kind/kubeadm.conf"
W1101 00:57:05.047614     262 initconfiguration.go:363] [config] WARNING: Ignored configuration document with GroupVersionKind kubeadm.k8s.io/v1beta4, Kind=JoinConfiguration
[init] Using Kubernetes version: v1.37.0
[certs] Using certificateDir folder "/etc/kubernetes/pki"
I1101 00:57:05.048764     262 certs.go:111] creating a new certificate authority for ca
[certs] Generating "ca" certificate and key
I1101 00:57:05.082261     262 certs.go:472] validating certificate period for ca certificate
[certs] Generating "apiserver" certificate and key
[certs] apiserver serving cert is signed for DNS names [kind-control-plane kubernetes kubernetes.default kubernetes.default.svc kubernetes.default.svc.cluster.local localhost] and IPs [10.96.0.1 172.18.0.3 127.0.0.1]
[certs] Generating "apiserver-kubelet-client" certificate and key
I1101 00:57:05.163709     262 certs.go:111] creating a new certificate authority for front-proxy-ca
[certs] Generating "front-proxy-ca" certificate and key
I1101 00:57:05.256602     262 certs.go:472] validating certificate period for front-proxy-ca certificate
[certs] Generating "front-proxy-client" certificate and key
I1101 00:57:05.293815     262 certs.go:111] creating a new certificate authority for etcd-ca
[certs] Generating "etcd/ca" certificate and key
I1101 00:57:05.308492     262 certs.go:472] validating certificate period for etcd/ca certificate
[certs] Generating "etcd/server" certificate and key
[certs] etcd/server serving cert is signed for DNS names [kind-control-plane localhost] and IPs [172.18.0.3 127.0.0.1 ::1]
[certs] Generating "etcd/peer" certificate and key
[certs] etcd/peer serving cert is signed for DNS names [kind-control-plane localhost] and IPs [172.18.0.3 127.0.0.1 ::1]
[certs] Generating "etcd/healthcheck-client" certificate and key
[certs] Generating "apiserver-etcd-client" certificate and key
I1101 00:57:05.513213     262 certs.go:77] creating new public/private key files for signing service account users
I1101 00:57:05.575278     262 kubeconfig.go:111] creating kubeconfig file for admin.conf
[certs] Generating "sa" key and public key
[kubeconfig] Using kubeconfig folder "/etc/kubernetes"
[kubeconfig] Writing "admin.conf" kubeconfig file
I1101 00:57:05.594197     262 kubeconfig.go:111] creating kubeconfig file for super-admin.conf
[kubeconfig] Writing "super-admin.conf" kubeconfig file
I1101 00:57:05.623743     262 kubeconfig.go:111] creating kubeconfig file for kubelet.conf
[kubeconfig] Writing "kubelet.conf" kubeconfig file
I1101 00:57:05.638339     262 kubeconfig.go:111] creating kubeconfig file for controller-manager.conf
[kubeconfig] Writing "controller-manager.conf" kubeconfig file
I1101 00:57:05.662669     262 kubeconfig.go:111] creating kubeconfig file for scheduler.conf
[kubeconfig] Writing "scheduler.conf" kubeconfig file
I1101 00:57:05.735687     262 images.go:86] WARNING: could not find officially supported version of etcd for Kubernetes v1.37.0, falling back to the nearest etcd version (3.7.0-0)
[etcd] Creating static Pod manifest for local etcd in "/etc/kubernetes/manifests"
I1101 00:57:05.741991     262 local.go:66] [etcd] wrote Static Pod manifest for a local etcd member to "/etc/kubernetes/manifests/etcd.yaml"
I1101 00:57:05.742086     262 manifests.go:125] [control-plane] getting StaticPodSpecs
I1101 00:57:05.742523     262 certs.go:472] validating certificate period for CA certificate
I1101 00:57:05.742626     262 manifests.go:151] [control-plane] adding volume "ca-certs" for component "kube-apiserver"
I1101 00:57:05.742638     262 manifests.go:151] [control-plane] adding volume "etc-ca-certificates" for component "kube-apiserver"
I1101 00:57:05.742643     262 manifests.go:151] [control-plane] adding volume "k8s-certs" for component "kube-apiserver"
I1101 00:57:05.742648     262 manifests.go:151] [control-plane] adding volume "usr-local-share-ca-certificates" for component "kube-apiserver"
I1101 00:57:05.742653     262 manifests.go:151] [control-plane] adding volume "usr-share-ca-certificates" for component "kube-apiserver"
[control-plane] Using manifest folder "/etc/kubernetes/manifests"
[control-plane] Creating static Pod manifest for "kube-apiserver"
I1101 00:57:05.743366     262 manifests.go:178] [control-plane] wrote static Pod manifest for component "kube-apiserver" to "/etc/kubernetes/manifests/kube-apiserver.yaml"
I1101 00:57:05.743381     262 manifests.go:125] [control-plane] getting StaticPodSpecs
[control-plane] Creating static Pod manifest for "kube-controller-manager"
I1101 00:57:05.743512     262 manifests.go:151] [control-plane] adding volume "ca-certs" for component "kube-controller-manager"
I1101 00:57:05.743518     262 manifests.go:151] [control-plane] adding volume "etc-ca-certificates" for component "kube-controller-manager"
I1101 00:57:05.743522     262 manifests.go:151] [control-plane] adding volume "k8s-certs" for component "kube-controller-manager"
I1101 00:57:05.743524     262 manifests.go:151] [control-plane] adding volume "kubeconfig" for component "kube-controller-manager"
I1101 00:57:05.743527     262 manifests.go:151] [control-plane] adding volume "usr-local-share-ca-certificates" for component "kube-controller-manager"
I1101 00:57:05.743530     262 manifests.go:151] [control-plane] adding volume "usr-share-ca-certificates" for component "kube-controller-manager"
I1101 00:57:05.743948     262 manifests.go:178] [control-plane] wrote static Pod manifest for component "kube-controller-manager" to "/etc/kubernetes/manifests/kube-controller-manager.yaml"
I1101 00:57:05.743960     262 manifests.go:125] [control-plane] getting StaticPodSpecs
[control-plane] Creating static Pod manifest for "kube-scheduler"
I1101 00:57:05.744083     262 manifests.go:151] [control-plane] adding volume "kubeconfig" for component "kube-scheduler"
I1101 00:57:05.744375     262 manifests.go:178] [control-plane] wrote static Pod manifest for component "kube-scheduler" to "/etc/kubernetes/manifests/kube-scheduler.yaml"
I1101 00:57:05.744388     262 kubelet.go:68] Stopping the kubelet
[kubelet-start] Writing kubelet environment file with flags to file "/var/lib/kubelet/kubeadm-flags.env"
[kubelet-start] Writing kubelet configuration to file "/var/lib/kubelet/instance-config.yaml"
[patches] Applied patch of type "application/strategic-merge-patch+json" to target "kubeletconfiguration"
[kubelet-start] Writing kubelet configuration to file "/var/lib/kubelet/config.yaml"
[kubelet-start] Starting the kubelet
I1101 00:57:05.884699     262 loader.go:408] Config loaded from file:  /etc/kubernetes/admin.conf
I1101 00:57:05.885012     262 envvar.go:195] "Feature gate default state" feature="InformerResourceVersion" enabled=true
I1101 00:57:05.885053     262 envvar.go:195] "Feature gate default state" feature="WatchListClient" enabled=true
I1101 00:57:05.885060     262 envvar.go:195] "Feature gate default state" feature="InOrderInformers" enabled=true
I1101 00:57:05.885065     262 envvar.go:195] "Feature gate default state" feature="AtomicFIFO" enabled=true
I1101 00:57:05.885081     262 envvar.go:195] "Feature gate default state" feature="ClientsAllowTLSCacheGC" enabled=true
I1101 00:57:05.885087     262 envvar.go:195] "Feature gate default state" feature="UnlockWhileProcessingFIFO" enabled=true
I1101 00:57:05.885096     262 envvar.go:195] "Feature gate default state" feature="InOrderInformersBatchProcess" enabled=true
I1101 00:57:05.885102     262 envvar.go:195] "Feature gate default state" feature="ClientsPreferCBOR" enabled=false
I1101 00:57:05.885107     262 envvar.go:195] "Feature gate default state" feature="ClientsAllowCBOR" enabled=false
I1101 00:57:05.885113     262 envvar.go:195] "Feature gate default state" feature="ClientsAllowCARotation" enabled=true
I1101 00:57:05.886312     262 loader.go:408] Config loaded from file:  /etc/kubernetes/super-admin.conf
I1101 00:57:05.886828     262 kubeconfig.go:667] ensuring that the ClusterRoleBinding for the kubeadm:cluster-admins Group exists
I1101 00:57:05.887332     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:06.388057     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:06.888108     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:07.387793     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:07.888109     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:08.388175     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:08.888643     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:09.388414     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:09.888528     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:10.387973     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:10.888376     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:11.387642     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:11.888109     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:12.388683     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:12.887912     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:13.388412     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:13.888185     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:14.387479     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:14.888404     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:15.388139     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:15.887769     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:16.388252     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:16.888044     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:17.388280     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:17.888459     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:18.387849     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:18.888195     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:19.387741     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:19.887802     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:20.388126     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:20.888060     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:21.388511     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:21.887941     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:22.427330     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=39
I1101 00:57:22.888086     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:23.387846     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:23.888321     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:24.387447     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:24.887696     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:25.388142     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:25.887411     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:26.387844     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:26.888298     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:27.387655     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:27.888494     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:28.388429     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:28.888246     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:29.388504     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:29.887876     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:30.388741     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:30.887952     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:31.388010     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:31.888464     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:32.388636     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:32.887886     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:33.388737     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:33.888538     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:34.387815     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:34.888120     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:35.387722     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:35.888625     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:36.388274     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:36.887602     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:37.387918     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:37.887873     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:38.387512     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:38.887875     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:39.388656     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:39.888041     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:40.388164     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:40.887633     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:41.388202     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:41.887503     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:42.387913     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:42.888354     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:43.387958     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:43.887787     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:44.388466     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:44.888229     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:45.387406     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:45.888515     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:46.388305     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:46.887499     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:47.388111     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:47.887745     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:48.454662     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=66
I1101 00:57:48.888097     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:49.388396     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:49.887987     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:50.387846     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:50.888263     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:51.388149     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:51.888647     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:52.388379     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:52.888684     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:53.388303     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:53.888115     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:54.387602     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:54.888363     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:55.387768     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:55.888279     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:56.387623     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:56.888160     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:57.387671     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:57.887923     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:58.388488     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:58.887953     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:59.388135     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:57:59.888335     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:00.388211     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:00.888042     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:01.388472     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:01.887946     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:02.388353     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:02.888114     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:03.387835     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:03.888336     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:04.387640     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:04.888239     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
I1101 00:58:05.387971     262 round_trippers.go:632] "Response" verb="POST" url="https://172.18.0.3:6443/apis/rbac.authorization.k8s.io/v1/clusterrolebindings?timeout=10s" status="" milliseconds=0
error: error execution phase wait-control-plane: cannot obtain client without bootstrap: could not bootstrap the admin user in file admin.conf: unable to create ClusterRoleBinding: context deadline exceeded
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run.func1
	k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:262
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).visitAll
	k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:450
k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow.(*Runner).Run
	k8s.io/kubernetes/cmd/kubeadm/app/cmd/phases/workflow/runner.go:234
k8s.io/kubernetes/cmd/kubeadm/app/cmd.newCmdInit.func1
	k8s.io/kubernetes/cmd/kubeadm/app/cmd/init.go:134
github.com/spf13/cobra.(*Command).execute
	github.com/spf13/cobra@v1.10.2/command.go:1015
github.com/spf13/cobra.(*Command).ExecuteC
	github.com/spf13/cobra@v1.10.2/command.go:1148
github.com/spf13/cobra.(*Command).Execute
	github.com/spf13/cobra@v1.10.2/command.go:1071
k8s.io/kubernetes/cmd/kubeadm/app.Run
	k8s.io/kubernetes/cmd/kubeadm/app/kubeadm.go:48
main.main
	k8s.io/kubernetes/cmd/kubeadm/kubeadm.go:25
runtime.main
	runtime/proc.go:290
runtime.goexit
	runtime/asm_amd64.s:1771

