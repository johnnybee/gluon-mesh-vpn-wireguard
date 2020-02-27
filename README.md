# gluon-mesh-vpn-wireguard

You can use this package for connecting with wireguard to the freifunk hood BonnV2. 

You should use something like the following in the site.conf:


```
 mesh_vpn = {
        mtu = 1420,
        wireguard = {
                enabled = 'true',
                iface = 'mesh-vpn',
                iprange = '10.3', --must be a /16!!
                limit = '1', -- actually unused
                gretapip = '10.3.0.2',
                peers = {
                                {
                                        publickey ='0AMlflcG6n+MiVip4085DgFEQI7B6e/QUbWlpUnm5xU=',
                                        endpoint ='bonn1.kbu.freifunk.net:10020',
                                },                
                                {
                                        publickey ='MwgDvHjM9GuBCeySqbcbhu2hrYaB5hkMA35OZKz0inM=',
                                        endpoint ='bonn2.kbu.freifunk.net:10020',
                                },
                                {
                                        publickey ='qUc5N5GH5b4e/Io8WiL2O3rcK7toDSDbUMUE8GHtBCg=',
                                        endpoint ='bonn3.kbu.freifunk.net:10020',
                                },

                        },
        },
        
```

**The `gretatpip` is the one of the server(s)!**
And you should include the package in the site.mk of course!
