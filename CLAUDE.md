# fun-zone 작업 규칙

놀이 프로젝트 모음 페이지(GitHub Pages, `main` 브랜치 루트 배포, 워크플로 없음). 상위 작업 루트나 전역 지침이 있으면 그것을 먼저 따르고, 여기에는 이 저장소만의 규칙을 둔다.

## 프로젝트 추가 절차
1. 이름: 폴더·id 는 영문 소문자와 하이픈. 카드 id 는 폴더 이름과 같게. 표시 이름은 자유.
2. 이 저장소 안에 만들면 `<id>/` 아래 정적 파일만. 다른 저장소의 사이트는 폴더 없이 `url` 로 연결만 한다(일확천금처럼 옮기지 않는다. 옮기면 Pages 주소가 바뀐다).
3. `projects.json` 에 카드를 더하고 `index.html` 의 `FALLBACK` 에 같은 내용을 넣는다. 두 목록은 항상 같아야 한다.
4. 모바일 폭(375px)에서 가로 스크롤이 없는지 확인한다.
5. 푸시 전에 공개 전 점검(`publish-check`, `-RequireWords`)을 돌린다. 커밋은 사용자가 "커밋해" 라고 한 뒤에, 푸시는 사람이 한다.

## 디자인
- 색·글꼴 토큰은 `index.html` 의 `:root` 에 있는 값을 쓴다(일확천금의 `site.css` 에서 가져온 것). 새 색이나 웹폰트를 임의로 늘리지 않는다. 디자인을 바꾸려면 사용자 확인을 받는다.
- 프레임워크·번들러·외부 CDN 스크립트를 넣지 않는다. 정적 HTML, CSS, JS 만.
- 카드 데이터로 들어온 문자열은 `textContent` 로만 넣고 `innerHTML` 에 쓰지 않는다. 링크는 https 주소나 같은 출처의 상대 주소만 허용한다.

## 무료 한도 규칙 (GitHub Free, 확인 2026-10-26)
작업 루트 지침의 같은 절과 내용을 맞춘 공개용 사본이다. 한도가 바뀌면 양쪽을 함께 고친다. 근거 문서(확인 2026-10-26):
- W = https://docs.github.com/en/pages/getting-started-with-github-pages/what-is-github-pages
- P = https://docs.github.com/en/pages/getting-started-with-github-pages/github-pages-limits
- R = https://docs.github.com/en/repositories/creating-and-managing-repositories/repository-limits
- F = https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github
- T = https://docs.github.com/en/site-policy/github-terms/github-terms-for-additional-products-and-features

규칙
- 저장소는 공개로 둔다. Free 의 Pages 는 공개 저장소만 된다. 비공개가 필요한 것은 여기에 두지 않는다. [근거: W]
- Actions 워크플로를 만들지 않는다(브랜치 배포). 꼭 필요하면 표준 러너만, `timeout-minutes` 와 `concurrency` 를 두고, 무거운 계산은 PC 에서 돌려 결과만 커밋한다. [근거: T]
- 파일은 1 MB 이하를 목표로 한다(GitHub 권장 상한). 50 MiB 초과는 경고, 100 MiB 초과는 차단이다. 저장소 전체는 1 GB 미만. Git LFS, Packages, 릴리스 자산은 쓰지 않는다. [근거: R, F]
- 사이트 크기는 1 GB 이하(목표 100 MB 이하), 첫 화면 로드는 1 MB 이하. 월 대역폭 100 GB 는 소프트 한도다. [근거: P]
- 브랜치 배포라 Pages 빌드 소프트 한도(시간당 10회)와 배포 10분 타임아웃이 적용된다. 푸시를 몰아서 하지 않는다(커스텀 Actions 워크플로로 배포하면 빌드 한도는 적용되지 않는다). [근거: P]
- 사이트에 결제, 광고 판매, 상품 판매를 붙이지 않는다. "당첨 보장", "수익 보장" 같은 단정 문구를 쓰지 않고 "오락·실험, 보장 없음" 고지를 둔다. [근거: P, T]
- 사이트들이 같은 `ljo0527.github.io` 출처를 쓴다. 브라우저 저장소 키는 `<프로젝트 id>:` 접두어를 붙이고, 서비스워커를 쓰면 scope 를 자기 경로로 제한한다.

## 하지 않는 것
- 실명, 개인 이메일, 내부 경로, 서버 주소, 계정 정보, 비공개 프로젝트의 내용을 파일·커밋 메시지에 쓰지 않는다. 커밋 이메일은 noreply 주소(저장소 로컬 git 설정).
- 푸시, 로그인, 저장소 설정(Pages 켜기 등)은 사람이 한다.
