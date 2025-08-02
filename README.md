# 🅿️ NeoParking - Domain Modeling and Architecture

## 📖 Table of Contents

1. [Domain](#-domain)  
2. [Project Objective](#-project-objective)  
3. [System Overview](#-system-overview)  
   3.1 [System Context](#-system-context)  
   3.2 [Container Context](#-container-context)  
   3.3 [Context Map](#-context-map)  
4. [Domain Modeling](#-domain-modeling)  
   4.1 [Aggregate Root: Ticket](#-aggregate-root-ticket)  
   4.2 [Aggregate Root: Owner](#-aggregate-root-owner)

---

## 🏢 Domain

NeoParking is a fictional parking company that aims to modernize its operations. Its main differentiator is the **human-centric service** and the **trust it builds** with clients. However, it faces challenges with **manual ticket handling** and **lack of visibility into parking spot availability**. The vision is to integrate technology to optimize processes, improve the customer experience, and ensure operational efficiency — all while **maintaining the human touch** that sets it apart.

NeoParking’s main revenue comes from two sources: **walk-in clients in the “free zone”**, who pay for temporary use, and **monthly subscribers**, who provide a predictable and stable income. Operations today are managed through a **combination of manual processes and human supervision**. As the owner, I **oversee the team, handle daily finances, and make occupancy decisions reactively based on observation**.

The modernization we are planning aims to **transform this manual management into a proactive, data-driven approach**.

---

## 🎯 Project Objective

Model, both strategically and tactically, the main domain aggregates, their behaviors, and their interactions. The architecture is designed with a focus on **modularity**, **clear responsibilities**, and **alignment with the business's ubiquitous language**.

This repository includes:

- Modeling of key **Aggregate Roots** (e.g., Ticket and Owner)
- Architectural diagrams using the **C4 Model** (System Context and Containers)
- Visual documentation using **PlantUML** with dynamic image links

---

## 🧭 System Overview

### 🧩 System Context

![System Context](https://www.plantuml.com/plantuml/png/TO_1hjem44Nt_effr0L8QRjXMH0IHUsYBGWMNIBZJ98HpZWQJmhv--U4F8c7n2eJZttlEUkeLhHhl8ce4B6rOZK8S60qIkeHZdrKR60JMF6cy0NsLYx4rRGmncEfe064gbgX846d5DYOJyJETmN2zytYssQnUZuuJPahO_OeCV1ir-BOdqFsFcOvV2umEbbc1unju4XdZr06WSQohGOIP1N2c0FUIDF7SW6fYegq0C6AeeeTcBuEQMghkCo6oHDVqZGtTvNPP7R_ImmVJHz8_WpD645hX7QwLFfmpS4b9Gd-pj04fgIGjg-ApG7zW_Kpm65aHudm7sjo7kEO6wwCaZmhiQnnrE_Xt4E5F2GDD4hkWcddgKJNfvSZ0BgQK-yBbkEltR_Jx-tFxTyVCvKEvsQDN7IDVmC0)


---

### 🧱 Container Context

![Container context](https://www.plantuml.com/plantuml/png/hPDFJnin4CNl_XJJLG-9b8OBnuBuKqIfsXA1r1wHi_koiU8THvu9P5NrkzVx9sYf252ffqp6tfdVUpC-4RLHDvKt0YN1saQh8H87Xb6d7dGMDboWeFF0YgqAZPh8EaQKCNsWcOqhnoNTrgAeZF5OA6cWwCgbKk4YSdM1ZNddEFUR0lJn_F3W_F3uxyHTt-7vWxRXiJ4pH0aykbwZ9PrGjWkp2Rql87ayocuWwy3YvXwq294goxPi8C4Q7MH2s3fDFvOBIirS0LQAA9rej0tkjAccjfIZh8cyurMAniPqCkzQLsoiHrclly_F-toMm9uwCoWufb-6w57Lw4c9wMcUGwGvZS6dCjr_wXDj6UHBFig-s7jB1tIxZasNin1qOC6tHZBaMSNtMBhSuo0yCEARPE-ddTcw0clYxAC1uCLM4TbwEfrT9T3-0brQnOEj1x2p61gD45ftTwGTcxfy1QLxwrtHuacBNoMKfQ_JtUQJVqU-wWUUc7VXMrszQRr2x40qsdmbZmiaDCAqd4vs_b9XArjYl8_mjp4ty2zFVv_PFpfF8EGMEzDeQONc05Db2v060XSx4xrR8AyJrK3g7gu4DNXVB-8D3Eb5TywqcoKJAgDbxPQmfdbD9RYfc-hrNFA_m7QJ730D9sFJmrJQ229XcqeuS0uAyH6x7zRqRHJxUh_oDYYqz2vmkzzvgDPWQHFoUcDp-_dwvztNYykBxvz66ZSOcnDmiQdy7m00)

Shows how the system interacts with operators and external services such as the payment gateway.
Breaks down the system into its main modules (containers):

- `Access Control`
- `Payment`
- `Incident`
- `Operator`

---

### 🧱 Context Map

TODO

---

## 🧠 Domain Modeling

### 🎟️ Aggregate Root: Ticket

![Aggregate root Ticket](https://www.plantuml.com/plantuml/png/VP7DRi8m48JlVefLJlrH3hro0W6LE549U835MS8AnuxMwmgAUFScA245gPoI_MOs6O_7KL4qLSuegoDOipsGmgGiXKfKCgP6Uy2I87kKCZWR0s0TnjZldHi0a8DUnqKnWircCUlWD-tPElfog3I2bGhxifF8gvnc3LzprMZBtIwIzdFlER8-j-G0rvTti4AjSatnyjf35-8ZmwJx8Fn3ypR1O4LdKvlpa-W6XHnXfFcHX_rWRQfFAnS6j1EYEo1KSbIIATPeMOU_fBf0fJjy6IfTjfz6vU1ljOORkg-sEsynqV-wyyKJLQcgWw2SfY7vniHUEoMcRRJ2Mv91wbDsLvvzPF2Mv-tpR-GHsE0LsKTpCMFoHQhSBm00)

The Ticket is the core of the customer's parking journey. It represents the entry, ticket issuance, and finalization with payment and authorized exit.

---

### 👤 Aggregate Root: Owner

![Aggregate root Owner](https://www.plantuml.com/plantuml/png/NP2nJWCn38RtF8ML2OfQmNfJaLWwWOJARYKcHFXofyG70-gxSssYG9qf_YB7_lvz4SooZ6ma2XCyVoVAy1X2fe12nipeFZ4GMFLYuSSO0CTOIkrQ0Qnd2zEvElW1ZiV3KsC9HnhWLN9CeI4t9K4dcixlrsGBSBdSGQOGYr2-JBkvRNIPFGfTCqzCdQdkD_g8ZadrQrf_-4zFVxeDT-6lMYjb7KDrvYahOuwEKg4NHj4HZPCdxgpkqCAs3nOsQpZsVhVRsBxIS1vRpCdiAVbbv5y0)

The Owner represents registered drivers in the system — either walk-ins or subscribers. It maintains their relationship with vehicles, contracts, and access permissions.

---
