---
title: "CLI vs GUI 내전"
date: "2018년 12월"
author: "이정훈, CLI 종족 지도자"
---

# 초록

GUI 종족과 CLI 종족간의 전쟁은 끝이 보이지 않고 있다.
두 종족간의 전쟁은 윈도우의 출현으로 GUI 종족의 일방적인 승리로 끝날 것으로 보였지만, 클라우드 시대의 출현으로 다시 CLI 종족이 주도권을 잡아가고 있는 모양이 되었다.
CLI 종족은 과거 소수였지만, 소프트웨어 카펜트리[@DBLP:journals/corr/SimperlerW15]를 내세워서 GUI 종족을 흡수하면서 세력을 급격히 확장시키고 있다.

두 종족간의 전쟁은 어떻게 전개될까? 과연 과학 컴퓨팅[@10.1371/journal.pbio.1001745]는 도움이 될까?

# 종족전쟁 도해

![GUI vs CLI](fig/gui-vs-cli.jpg)

# 수식

$$\text{생산성} = \frac{\text{CLI}^2}{\text{GUI}}$$

# 문제해결 

GUI로 해결하기 힘든 아래와 같이 `pdf` 파일 생성시 생긴 문제는 
구글 검색을 통해서 stackoverflow [Pandoc and foreign characters](https://stackoverflow.com/questions/18178084/pandoc-and-foreign-characters)에서
해법을 찾아 `--latex-engine=xelatex -V CJKmainfont=NanumGothic`와 같이 글꼴까지 반영시킨다.

```
! Package inputenc Error: Unicode character 내 (U+B0B4)
(inputenc)                not set up for use with LaTeX.
```

# 참고문헌

# 첨부: `pandoc` 컴파일 코드

```
pandoc --filter pandoc-citeproc 
       --bibliography=data_science.bib 
       --variable classoption=twocolumn 
       --variable papersize=a4paper 
       --latex-engine=xelatex 
       -V CJKmainfont=NanumGothic 
       -s data_science.md -o data_science.pdf
```