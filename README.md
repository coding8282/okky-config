# 개요

환경 설정을 중앙 집중하여 관리하는 서비스입니다. spring cloud config를 이용하며, 다른 서비스가 구동되기 위해서는 이 서비스가 먼저 작동해야 합니다.

서비스 환경 설정은 모두 이곳에서 관리하며, 관련 형상관리시스템(git)이 적절히 설정해야 합니다. 개발 시에는 로컬에서 구동하며, 클라우드 환경에서는 애플리케이션 서버와 별도로 분리합니다.

참고: [옼희](https://github.com/coding8282/okky#%EC%98%BC%ED%9D%AC)