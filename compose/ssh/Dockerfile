# A throwaway SSH server for the tunnel tests: user native-sql-database-client-windows, password
# native-sql-database-client-windows, and the test keys from crates/native-sql-database-client-windows-db/tests/ssh.
FROM alpine:3.22
RUN apk add --no-cache openssh \
 && ssh-keygen -A \
 && adduser -D -s /bin/sh native-sql-database-client-windows \
 && echo 'native-sql-database-client-windows:native-sql-database-client-windows' | chpasswd \
 && sed -i -e 's/^#\?AllowTcpForwarding.*/AllowTcpForwarding yes/' \
           -e 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config \
 && printf '%s\n' \
      '# Tests fail logins on purpose and connect in parallel, all from the' \
      '# Docker gateway address: never penalize or throttle that source.' \
      'PerSourcePenalties no' 'MaxStartups 100:30:200' >> /etc/ssh/sshd_config \
 && mkdir -p /home/native-sql-database-client-windows/.ssh
COPY crates/native-sql-database-client-windows-db/tests/ssh/id_ed25519.pub crates/native-sql-database-client-windows-db/tests/ssh/id_ed25519_enc.pub /tmp/keys/
RUN cat /tmp/keys/*.pub > /home/native-sql-database-client-windows/.ssh/authorized_keys \
 && chown -R native-sql-database-client-windows:native-sql-database-client-windows /home/native-sql-database-client-windows/.ssh \
 && chmod 700 /home/native-sql-database-client-windows/.ssh && chmod 600 /home/native-sql-database-client-windows/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-e"]
