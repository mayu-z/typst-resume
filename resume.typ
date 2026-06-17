// Mayuresh Singh - resume


#set page(
  paper: "a4",
  margin: (top: 0.3in, bottom: 0.3in, left: 0.45in, right: 0.45in),
)

#set text(
  font: "Liberation Sans",
  size: 10pt,
  fill: rgb("#111111"),
)

#set par(
  leading: 0.5em,
  justify: true,
)

// reusable components

#let section-heading(title) = {
  v(5pt)
  block(width: 100%)[
    #text(
      size: 11pt,
      weight: "bold",
      tracking: 0.08em,
      upper(title),
    )
    #v(-5pt)
    #line(length: 100%, stroke: 0.9pt + black)
  ]
  v(1pt)
}

#let entry-header(
  title: "",
  tech: "",
  date: "",
  sub-left: "",
  sub-right: "",
) = {
  v(2pt)
  grid(
    columns: (1fr, auto),
    align: (left, right),
    [
      #text(weight: "bold", size: 10pt, title)
      #if tech != "" [
        #text(size: 10pt)[ | ]
        #text(weight: "bold", style: "italic", size: 10pt, tech)
      ]
    ],
    text(size: 10pt, date),
  )
  if sub-left != "" or sub-right != "" {
    grid(
      columns: (1fr, auto),
      align: (left, right),
      text(size: 9.5pt, style: "italic", sub-left),
      text(size: 9.5pt, style: "italic", sub-right),
    )
  }
}

#let bullets(..items) = {
  v(1pt)
  list(
    indent: 8pt,
    marker: [•],
    spacing: 3.5pt,
    ..items,
  )
}

#let skill-line(category, items) = {
  [#text(weight: "bold", category + ": ")#items\ ]
}

  
//  HEADER


#align(center)[
  #block(width: 100%, inset: (x: 12pt, y: 10pt), radius: 0pt)[
    #text(size: 20pt, weight: "bold", tracking: 0.1em, fill: black)[MAYURESH SINGH]
    #v(2pt)
    #text(size: 10pt, fill: rgb("#000"))[Junior DevOps Engineer]
  ]
  #v(3pt)
  #text(size: 9pt)[
    #link("mailto:mayuresh2k4@gmail.com")[mayuresh2k4\@gmail.com]#h(6pt)·#h(6pt)
    +91-8618839652#h(6pt)·#h(6pt)
    #link("https://www.mayuu.me")[mayuu.me]#h(6pt)·#h(6pt)
    #link("https://github.com/mayu-z")[github.com/mayu-z]#h(6pt)·#h(6pt)
    #link("https://www.linkedin.com/in/mayu-esh/")[linkedin.com/in/mayu-esh]
  ]
]

 
//  TECHNICAL SKILLS


#section-heading("Technical Skills")

#skill-line("Languages", "Go, JavaScript, TypeScript, Python, Lua")
#skill-line("DevOps & Cloud", "Docker, Docker Compose, CI/CD, Terraform (IaC) , AWS EC2 | IAM")
#skill-line("Databases", "PostgreSQL, MongoDB, Redis")
#skill-line("Developer Tools", "Git, GitHub Actions, Neovim, Typst")
#skill-line("Other", "React, Node.js, Tailwind CSS, FastAPI, BubbleTea (Go-Lang)")

 
//  EDUCATION
 

#section-heading("Education")

#entry-header(
  title: "IFIM College, Bangalore",
  date: "2023 — 2026",
)
#text(size: 9.5pt, style: "italic")[Bachelor of Computer Applications (BCA)]

 
//  EXPERIENCE
 

#section-heading("Experience")

#entry-header(
  title: "Junior DevOps Engineer",
  tech: "Docker, AWS EC2, CI/CD, Git",
  date: "2025 — Present",
  sub-left: "Aexiz Solutions",
)

#bullets(
  [Provisioned and hardened AWS EC2 instances for 4+ production services, reducing manual setup time by ~60% through repeatable configuration scripts],
  [Containerized 3+ services with Docker and Docker Compose, cutting environment inconsistency issues to zero across dev and production],
  [Engineered CI/CD pipelines that reduced deployment cycle time from manual multi-step releases to under 5-minute automated runs],
  [Administered Git/GitHub workflows across a multi-developer team — branching strategies, PR reviews, and release tagging for 2+ active repositories],
)

#entry-header(
  title: "Co-Founder",
  tech: "AWS, GCP, Azure, Oracle Cloud",
  date: "2024 — Present",
  sub-left: "C3 — Cloud Computing Community",
)

#bullets(
  [Founded and scaled a vendor-neutral cloud community to 50+ members, covering hands-on learning across AWS, GCP, Azure, and Oracle Cloud],
  [Organized sessions and learning tracks that helped members go from zero to deploying on multiple cloud providers],
)

 
//  TECHNICAL PROJECTS
 

#section-heading("Technical Projects")

#entry-header(
  title: link("https://github.com/mayu-z/yc-cofounder")[YC Co-Founder — RAG Startup Advisor],
  tech: "Python, ChromaDB, Streamlit",
  date: "",
)

#bullets(
  [Built a RAG-powered startup advisor over 5 YC knowledge sources — Paul Graham essays, blog posts, Startup School transcripts, company data, and application context],
  [Implemented hybrid retrieval (semantic + keyword) with re-ranking and diversity filtering, achieving a 0.87 overall RAG score across a 100-question benchmark],
  [Developed a YC-style startup evaluator and similar-company retrieval system with hallucination and sourcing tracking across 100 benchmark questions],
)

#entry-header(
  title: link("https://github.com/mayu-z/chat-app")[Real-Time Chat Application],
  tech: "MongoDB, Express, React, Node.js, Docker",
  date: "",
)

#bullets(
  [Engineered a full-stack chat platform supporting real-time bidirectional messaging via WebSockets with JWT-based auth across multiple concurrent users],
  [Containerized the full MERN stack with Docker Compose, reducing onboarding setup from hours to a single command],
)

 
//  HACKATHONS
 

#section-heading("Hackathons")

#entry-header(
  title: link("https://github.com/MeghVyas3132/Aletheia")[Aletheia — Multi-Agent Fact-Checker],
  tech: "FastAPI, LangGraph, Docker, Aptos",
  date: "Deep Hackathon",
)

#bullets(
  [Architected a multi-agent fact-checking system with 3+ specialized agents retrieving and cross-verifying sources in parallel, reducing single-source hallucination risk],
)

#entry-header(
  title: link("https://github.com/Antxnrx/zeus")[Zeus — Autonomous CI/CD Healer],
  tech: "FastAPI, React, Redis, PostgreSQL",
  date: "RIFT 2026",
)

#bullets(
  [Built an autonomous agent that monitors CI/CD pipelines, detects failing tests, generates targeted fixes, and auto-commits patches — eliminating manual intervention for common failure patterns],
)

 
//  CERTIFICATIONS
 

#section-heading("Certifications")

#grid(
  columns: (1fr, auto),
  align: (left, right),
  [#text(weight: "bold")[MCP Beginner & Advanced] — Anthropic #h(4pt) #text(size: 9pt, style: "italic")[Building and deploying MCP servers with AI systems]],
  text(size: 10pt, "2025"),
)
#v(2pt)
#grid(
  columns: (1fr, auto),
  align: (left, right),
  [#text(weight: "bold")[Full-Stack Web Development Bootcamp] — Udemy, Dr. Angela Yu],
  text(size: 10pt, "Jan 2026"),
)
