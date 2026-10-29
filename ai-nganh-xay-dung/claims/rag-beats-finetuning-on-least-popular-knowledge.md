---
id: "rag-beats-finetuning-on-least-popular-knowledge"
title: "Với tri thức thực tế ít phổ biến nhất, RAG vượt fine-tuning (FT) với biên độ lớn, dù FT vẫ"
object_type: "claim"
status: "active"
statement: "Với tri thức thực tế ít phổ biến nhất, RAG vượt fine-tuning (FT) với biên độ lớn, dù FT vẫn nâng hiệu năng ở các thực thể có độ phổ biến khác nhau."
claim_type: "FACT"
confidence: "HIGH"
atom_ids: ["r2-f13", "r2-f13c"]
evidence:
  - atom: "r2-f13"
    run: "ai-xay-dung-261029"
    source: "arxiv-org-abs-2403-01432"
    evidence_uri: "_evidence/ai-xay-dung-261029/sources/r2-arxiv-rag-vs-finetuning-less-popular-knowledge.txt"
    quote: "while FT boosts the performance across entities of varying popularity, RAG surpasses FT by a large margin particularly for least popular factual knowledge."
  - atom: "r2-f13c"
    run: "ai-xay-dung-261029"
    source: "arxiv-org-abs-2312-05934"
    evidence_uri: "_evidence/ai-xay-dung-261029/sources/r2-arxiv-finetuning-vs-rag-knowledge-injection.txt"
    quote: "Our findings reveal that while unsupervised fine-tuning offers some improvement, RAG consistently outperforms it, both for existing knowledge encountered during training and entirely new knowledge."
link_types:
  - link_type: "supported-by"
    target_id: "arxiv-org-abs-2403-01432"
  - link_type: "supported-by"
    target_id: "arxiv-org-abs-2312-05934"
---

## Statement

Với tri thức thực tế ít phổ biến nhất, RAG vượt fine-tuning (FT) với biên độ lớn, dù FT vẫn nâng hiệu năng ở các thực thể có độ phổ biến khác nhau.

## Evidence

Quotes and captures are recorded in the evidence list of the frontmatter, one entry per ledger atom.
