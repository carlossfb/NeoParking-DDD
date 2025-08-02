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
   6.3 [Owner](#occupation) 
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

![Context Map](https://www.plantuml.com/plantuml/png/ZPBBJW8n58RtVOgJsRWYn2qXX4GNccY61EB6i2YT0pOCfxMd1OtnXNmDNypQCfVPpRB_vIlyqoLxwNmurS9hNoFS6VBuuU5PMY6iL4TvG2ZA2w5hl0Bcyvq9L65rLHOB-180gfRCaBBjwGNVjAfHVFTe6wsEw3KTHX9pVe0ebGfMUcre9ACh33Wh-Nb2yYCXr_I0y5Xk8ERGaQn7OjP8R5mizXHtngH4T7k0uhQ0oMJH5M06va8iH1gvyPkHM_S6xj4YLRy_fBHaGF8EGUMVObZaGLCrWsRmMZwij_0Uq6baE6VWr2HNqzxa6rEbsQmffHV4OAyoXnqhfstQEjyqfhP7xFtpcEzzuboPFgss_rDK3ARp8iO75ikenrVy1m00)

Breaks down the system into its main modules:

- "Owner Context"
- "Ticketing Context"
- "Occupation Context"
- "Payment Context"
- "IOT external Context"

---

## 4. Process Discovery

![Event Storming_parte1](https://github.com/carlossfb/NeoParking-DDD/blob/main/docs/graph/temporary_clients.jpg)

![Event Storming_parte2](https://github.com/carlossfb/NeoParking-DDD/blob/main/docs/graph/creating_subscriber.jpg)

![Event Storming_parte3](https://github.com/carlossfb/NeoParking-DDD/blob/main/docs/graph/subscriber_workflow.jpg)

---

## 5. Project Structure and Architecture

TODO

---

## 6. Aggregates

### 6.1 Ticket

![Aggregate root Ticket](https://www.plantuml.com/plantuml/png/XP11Qm8n58Jl-HMFFIb5eTSzY4KjUB9GxVqHnpMOP2LvAxR5_zwONLjSa5uIvfiFCcGQXOCqpYenOa5hemyGUgcgW8e5D6Y9yHNDQYyuor2f8-i3Lw2YhnVqhOYqvHYfxJ8W6f7akDoMjDaivnqyOM-qnPjbGNcNFbQT0Y_XSvx8shZah7Qx2BdbctCsyeyIXQM9PRVgFQUs6kNhYNG02zf-CBn1MyS-uqRsTJ1VM5od_QbiTNET_WhymW0BZbYaWPbTL3gC5uGTQz2yTcpyuWGlglTnipndIyOTBLmIuftTazFCnwwYJgFYkQ3nUD9xeYGu8v4c3qLRnpllegRmsyRP7m00)


### 6.2 Owner

![Aggregate root Owner](https://www.plantuml.com/plantuml/png/RP8_Ry8m4CLtVufJ9aeLrAvCzC_2K85KmMxP3nFLiIFdA4KLtxs4NArYTKhUx_nyTtbPzAmJ7rglk64FMXq34ht4mFXYgaK_EPVWD4EfJfiFxK1LKQdeMn4Ph_jUJ8EconLnK4ixfyrc-Ieiw1PpUkVK12V8nC3QS4cxNK4wVMeHBkVMuyjsDHRgw-EU4bpJCz9rYCcTq4DdDUEMMNXaLhYts3V6e_0BBMuegGENQDS4A-pvjFQQCHcNecuGVvoorHju7stscxqE3hUrl3y574KCvyyg1o4jSnIVeox2-2yW4trCnPVtZK7eSHs_ABNHmlyocK5-W-gnecbTK_KmcqshFD9yQDkhireWs4FhVm00)


### 6.3 Occupation

![Aggregate root Occupation](https://www.plantuml.com/plantuml/png/TP1DQiCm48NtEiNWLK99eDiiGaBTGbPUf3d0L7us8lenyhWKIkvUANM30ir6GjzyyqRIRXIECZchn8W5DLfF0ui9dlPz7z6pW1O5VGbUy2LBfGRMP-v1rNyz5Nqh8crv7ClC38bM56xeq6xeT3hKSs7WU3Q-Fmv1SkKeCPtA9eE4FqAmO3_p5W8jQFUoeQRhHaZDWdVZy2kihjiJkPJTp1cBPG7V8d055vKMumMnOmsgWsFZNp_XHTrUaw_sbqB63HOENiOxkNHp-4DHKVaxrND5w_NsViI6u4ngspvsyuXIlAWTV3iv-mC0)


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
