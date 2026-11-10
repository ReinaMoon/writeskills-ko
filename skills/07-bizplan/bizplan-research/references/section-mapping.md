# 카드 > 본문 절 매핑, 교차 검증

정부 양식 소항목 번호 대신 **일반 BP 절 키**를 쓴다. write 입력 JSON `sections`와 동일.

---

## 1. 매핑

| 절 키 | 주 카드 | 보조 |
|-------|---------|------|
| problem | P | U(동기), R(사례) |
| solution | S | U(준비 수준), R |
| market | P | R |
| business_model | S | R |
| gtm_growth | S | C |
| competition | C | R |
| team | U | (없음) |
| financials | S | U |
| milestones | S | U |

---

## 2. 교차 검증

### 필수 (실패 시 blocked)

1. **규모**: P의 SAM이 C 경쟁 매출 합과 비교해 비현실적으로 작지 않은지(대략 SAM ≥ 경쟁 합 × 여유). 데이터 없으면 `[검증 보류]` + 사유. 
2. **타깃**: P 고객 정의와 C 경쟁 타깃이 완전 불일치하지 않는지. 
3. **모델**: S 가격, 채널이 P 타깃, 지불 능력과 모순되지 않는지.

### 권장 (경고만)

4. **자금**: S/ financials 규모와 U 조달 계획이 같은 자릿수인지. 
5. **단계**: U 개발 단계와 R 벤치마크 단계가 비슷한지.

결과는 인덱스와 JSON `cross_validation`(또는 MD 동등 섹션)에 기록.

---

## 3. write 인계

`bizplan_input_*.json`의 `sections`, `tables`, `source_grades`, `missing`을 채운다. 
PSST 12슬롯, 공고 필드명은 쓰지 않는다.
