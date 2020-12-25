Services:

  echo Primary: sql-mariadb.default.svc.cluster.local:3306

Administrator credentials:

  Username: root
  Password: 144qcr3pwa%
  Password : $(kubectl get secret --namespace default sql-mariadb -o jsonpath="{.data.mariadb-root-password}" | base64 --decode)

To connect to your database:

  1. Run a pod that you can use as a client:

      kubectl run sql-mariadb-client --rm --tty -i --restart='Never' --image  docker.io/bitnami/mariadb:10.5.8-debian-10-r21 --namespace default --command -- bash

  2. To connect to primary service (read/write):

      mysql -h sql-mariadb.default.svc.cluster.local -uroot -p my_database

To upgrade this helm chart:

  1. Obtain the password as described on the 'Administrator credentials' section and set the 'auth.rootPassword' parameter as shown below:

      ROOT_PASSWORD=$(kubectl get secret --namespace default sql-mariadb -o jsonpath="{.data.mariadb-root-password}" | base64 --decode)
      helm upgrade sql bitnami/mariadb --set auth.rootPassword=$ROOT_PASSWORD
      
      

