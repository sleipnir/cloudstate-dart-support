FROM google/dart

WORKDIR /app

ADD pubspec.yaml /app/
RUN pub get
ADD . /app
RUN pub get --offline
RUN dart --snapshot-kind=kernel --snapshot=bin/main.dart.snapshot bin/main.dart

CMD []
ENTRYPOINT ["/usr/bin/dart", "--enable-asserts",  "--enable-vm-service:8181", "bin/main.dart.snapshot"]