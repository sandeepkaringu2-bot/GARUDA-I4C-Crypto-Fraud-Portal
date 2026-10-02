# GARUDA — Crypto Fraud Attribution Portal

**Operational tool for Indian cybercrime officers to attribute a victim-reported crypto wallet to a real exchange (VASP), score recoverable value, and draft a SAHYOG-ready freeze notice — in minutes, not days.**

Built for **Ministry of Home Affairs / I4C — Problem Statement ID-26183**

**Live demo:** https://garuda-i4c-crypto-fraud-portal.vercel.app/trace

## Why this exists

Stolen crypto often reaches an exchange within hours. After ~48 hours recovery is rare. Indian FIU-registered VASPs can freeze funds in 6–12 hours **if** officers send a correctly targeted, legally grounded notice in time.

GARUDA closes that gap: paste wallet → multi-hop trace → VASP attribution → SAHYOG freeze draft + bilingual brief + hash-chained audit.

## Officer workflow

1. Open **Trace**, paste victim wallet + NCRP ID
2. Engine walks hops (BTC / ETH / TRON live when available), screens mixers & sanctions
3. Ranks Indian VASP endpoints and recoverable ₹
4. **Generate Notice** → CrPC 91 / PMLA 17 / IT Act draft
5. Review, sign, send via official SAHYOG channel
6. Evidence log stays hash-chained for court

## Stack

TanStack Start · React 19 · Tailwind v4 · Radix · Zustand · Blockstream / TronGrid / EVM explorers · Vercel

## Run locally

```bash
npm install
npm run dev
```

## Clean repo

This repository is the **clean** source tree (no committed `.vercel` build output). See `OPERATIONS.md` for the officer playbook.

## Limits (honest)

- Notices are **drafts** — officer must sign and transmit
- Deposit-cluster attribution uses demo labels + live matching; production needs LEA feeds
- SAHYOG API is local outbox only in this build
