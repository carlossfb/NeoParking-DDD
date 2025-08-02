# 🅿️ NeoParking - DDD Approach

> Applying Domain-Driven Design (DDD) in practice with a pragmatic and objective approach.

---

## 📖 Table of Contents

1. [About](#about)  
2. [Domain Description](#domain-description)  
3. [General Assumptions](#general-assumptions)  
4. [Process Discovery](#process-discovery)  
5. [Project Structure and Architecture](#project-structure-and-architecture)  
6. [Aggregates](#aggregates)  
   6.1 [Ticket](#ticket)  
   6.2 [Owner](#owner)  
7. [Events](#events)  
   7.1 [Events in Repositories](#events-in-repositories)  
8. [ArchUnit](#archunit)  
9. [Functional Thinking](#functional-thinking)  
10. [No ORM](#no-orm)  
11. [Architecture-Code Gap](#architecture-code-gap)  
12. [Model-Code Gap](#model-code-gap)  
13. [Spring](#spring)  
14. [Tests](#tests)  
15. [How to Contribute](#how-to-contribute)  
16. [References](#references)

---

## 1. About

NeoParking is a domain-driven sample project that aims to model a real-world parking operation using strategic and tactical DDD principles.  
It highlights architecture design, domain modeling, and implementation choices aligned with a real business case.

---

## 2. Domain Description

NeoParking is a conventional parking lot that seeks to modernize its operations. Its main differential is the human service and the trust it offers, but it faces challenges with manual ticket management and lack of visibility about spot availability. The vision is to integrate technology to optimize processes, improve customer experience, and ensure efficiency while maintaining the human touch that differentiates it.

The main revenue of NeoParking comes from two sources: walk-in customers in the "free zone," who pay for occasional use, and monthly subscribers who guarantee a stable and predictable income. The current operation management is a combination of human supervision and manual processes. I, as the owner, supervise the team, handle daily financial management, and make occupancy decisions reactively based on observation. The modernization we are planning aims to transform this manual management into a more proactive and data-driven approach.

---

## 3. General Assumptions

![System Context](https://www.plantuml.com/plantuml/png/TO_1hjem44Nt_effr0L8QRjXMH0IHUsYBGWMNIBZJ98HpZWQJmhv--U4F8c7n2eJZttlEUkeLhHhl8ce4B6rOZK8S60qIkeHZdrKR60JMF6cy0NsLYx4rRGmncEfe064gbgX846d5DYOJyJETmN2zytYssQnUZuuJPahO_OeCV1ir-BOdqFsFcOvV2umEbbc1unju4XdZr06WSQohGOIP1N2c0FUIDF7SW6fYegq0C6AeeeTcBuEQMghkCo6oHDVqZGtTvNPP7R_ImmVJHz8_WpD645hX7QwLFfmpS4b9Gd-pj04fgIGjg-ApG7zW_Kpm65aHudm7sjo7kEO6wwCaZmhiQnnrE_Xt4E5F2GDD4hkWcddgKJNfvSZ0BgQK-yBbkEltR_Jx-tFxTyVCvKEvsQDN7IDVmC0)

Shows how the system interacts with operators and external services such as the payment gateway.

---

### 🧱 Container Context

![Container context](https://www.plantuml.com/plantuml/png/hPDFJnin4CNl_XJJLG-9b8OBnuBuKqIfsXA1r1wHi_koiU8THvu9P5NrkzVx9sYf252ffqp6tfdVUpC-4RLHDvKt0YN1saQh8H87Xb6d7dGMDboWeFF0YgqAZPh8EaQKCNsWcOqhnoNTrgAeZF5OA6cWwCgbKk4YSdM1ZNddEFUR0lJn_F3W_F3uxyHTt-7vWxRXiJ4pH0aykbwZ9PrGjWkp2Rql87ayocuWwy3YvXwq294goxPi8C4Q7MH2s3fDFvOBIirS0LQAA9rej0tkjAccjfIZh8cyurMAniPqCkzQLsoiHrclly_F-toMm9uwCoWufb-6w57Lw4c9wMcUGwGvZS6dCjr_wXDj6UHBFig-s7jB1tIxZasNin1qOC6tHZBaMSNtMBhSuo0yCEARPE-ddTcw0clYxAC1uCLM4TbwEfrT9T3-0brQnOEj1x2p61gD45ftTwGTcxfy1QLxwrtHuacBNoMKfQ_JtUQJVqU-wWUUc7VXMrszQRr2x40qsdmbZmiaDCAqd4vs_b9XArjYl8_mjp4ty2zFVv_PFpfF8EGMEzDeQONc05Db2v060XSx4xrR8AyJrK3g7gu4DNXVB-8D3Eb5TywqcoKJAgDbxPQmfdbD9RYfc-hrNFA_m7QJ730D9sFJmrJQ229XcqeuS0uAyH6x7zRqRHJxUh_oDYYqz2vmkzzvgDPWQHFoUcDp-_dwvztNYykBxvz66ZSOcnDmiQdy7m00)

Breaks down the system into its main modules (containers):

- `Access Control`
- `Payment`
- `Incident`
- `Operator`

---

## 4. Process Discovery

![Event Storming_parte1](https://github.com/carlossfb/NeoParking-DDD/blob/main/docs/temporary_clients.jpg)

![Event Storming_parte2](https://github.com/carlossfb/NeoParking-DDD/blob/main/docs/creating_subscriber.jpg)

![Event Storming_parte3](https://github.com/carlossfb/NeoParking-DDD/blob/main/docs/subscriber_workflow.jpg)

---

## 5. Project Structure and Architecture

TODO

---

## 6. Aggregates

### 6.1 Ticket

![Aggregate root Ticket](https://www.plantuml.com/plantuml/png/VP7DRi8m48JlVefLJlrH3hro0W6LE549U835MS8AnuxMwmgAUFScA245gPoI_MOs6O_7KL4qLSuegoDOipsGmgGiXKfKCgP6Uy2I87kKCZWR0s0TnjZldHi0a8DUnqKnWircCUlWD-tPElfog3I2bGhxifF8gvnc3LzprMZBtIwIzdFlER8-j-G0rvTti4AjSatnyjf35-8ZmwJx8Fn3ypR1O4LdKvlpa-W6XHnXfFcHX_rWRQfFAnS6j1EYEo1KSbIIATPeMOU_fBf0fJjy6IfTjfz6vU1ljOORkg-sEsynqV-wyyKJLQcgWw2SfY7vniHUEoMcRRJ2Mv91wbDsLvvzPF2Mv-tpR-GHsE0LsKTpCMFoHQhSBm00)


### 6.2 Owner

![Aggregate root Owner](https://www.plantuml.com/plantuml/png/NP2nJWCn38RtF8ML2OfQmNfJaLWwWOJARYKcHFXofyG70-gxSssYG9qf_YB7_lvz4SooZ6ma2XCyVoVAy1X2fe12nipeFZ4GMFLYuSSO0CTOIkrQ0Qnd2zEvElW1ZiV3KsC9HnhWLN9CeI4t9K4dcixlrsGBSBdSGQOGYr2-JBkvRNIPFGfTCqzCdQdkD_g8ZadrQrf_-4zFVxeDT-6lMYjb7KDrvYahOuwEKg4NHj4HZPCdxgpkqCAs3nOsQpZsVhVRsBxIS1vRpCdiAVbbv5y0)


---

## 7. Events

TODO

### 7.1 Events in Repositories

TODO

---

## 8. ArchUnit

TODO

---

## 9. Functional Thinking

TODO

---

## 10. No ORM

TODO

---

## 11. Architecture-Code Gap

TODO

---

## 12. Model-Code Gap

TODO

---

## 13. Spring

TODO

---

## 14. Tests

TODO

---

## 15. How to Contribute

TODO

---

## 16. References

TODO
