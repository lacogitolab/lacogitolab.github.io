---
layout: post
title: "Towards cognitive agentic system"
date: 2025-11-21
author: "Xiaming Chen"
header-img: "img/post-bg-universe.jpg"
tags: ["AI Agent", "Cognitive Computing"]
---

Project **COGENTS** (COGnitive aGENTic System) is trying to build a comprehensive,
modular ecosystem for building intelligent, cognitive agent systems. COGENTS
provides foundational abstractions, specialized toolkits, intelligent agents,
and powerful search & automation capabilities—all designed to work together
seamlessly. It combines theoretical foundations with practical implementations.

COGENTS is supported and implemented by multiple interconnected subprojects,
each addressing a specific aspect of cognitive agent development.

## 📦 Subprojects

### 1. [cogents-core](https://github.com/caesar0301/cogents-core/) 🧠 **(BASE)**

[![PyPI version](https://img.shields.io/pypi/v/cogents-core.svg)](https://pypi.org/project/cogents-core/)
[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/caesar0301/cogents-core)

**The foundational layer providing core abstractions and essential modules for all COGENTS projects.**

#### Core Abstractions
- **Agent**: Base classes for building custom agents (BaseAgent, BaseGraphicAgent, BaseConversationAgent, BaseResearcher)
- **Goal Management**: Goal decomposition, conflict detection, and dynamic replanning (Goalith)
- **Tool Management**: Centralized tool registry, execution engine, and repository system (Toolify)
- **Memory Management**: Persistent memory capabilities (under development)
- **Orchestration**: Global orchestration system (under development)

#### Key Features
- **Multi-Model LLM Support**: OpenAI, Google GenAI, Ollama, LlamaCPP with dynamic routing
- **Advanced Routing**: Complexity-based and self-assessment routing strategies
- **Observability**: Built-in token tracking and Opik tracing integration
- **Message Bus**: Inter-agent communication system
- **Extensible Design**: Easy to add new providers and capabilities

```bash
pip install -U cogents-core
```

**Use Cases**: Building custom agents, goal-oriented planning, tool integration, LLM management

### 2. [cogents-smith](https://github.com/caesar0301/cogents-smith/) 🔨

[![PyPI version](https://img.shields.io/pypi/v/cogents-smith.svg)](https://pypi.org/project/cogents-smith/)
[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/caesar0301/cogents-smith)

**Complete web intelligence and automation framework: extensive toolkit ecosystem, production-ready agents, multi-engine search, browser automation, and structured data extraction.**

#### Core Capabilities
- **Multi-Engine Web Search**: Simultaneous search across 9+ engines (Tavily, DuckDuckGo, Google AI, SearXNG, Brave, Baidu, WeChat)
- **Deep Research Agent**: Autonomous research with iterative query refinement and source aggregation
- **Browser Automation**: Intelligent browser control with natural language instructions
- **Structured Data Extraction**: Extract data using Pydantic models and YAML-based schema parser
- **LangGraph Workflows**: Advanced agent orchestration with state management

#### Toolkit Ecosystem (18 Specialized Toolkits in 10 Semantic Groups)
- **Academic Research**: arXiv integration for paper discovery and analysis
- **Development Tools**: Bash, file editing, GitHub, Python execution
- **Media Processing**: Image analysis, video processing, audio transcription
- **Information Retrieval**: Wikipedia, web search, knowledge extraction
- **Data Management**: Tabular data, memory systems, document handling
- **Communication**: Gmail integration
- **Human Interaction**: User communication and feedback collection

#### Production-Ready Agents
- **Askura Agent**: Dynamic conversational agent for structured information collection
- **Seekra Agent**: Deep research agent for comprehensive topic investigation and report generation

#### Architecture Features
- **Semantic Organization**: Intuitive grouping for easy discovery
- **Lazy Loading**: Load only what you need
- **Async-First Design**: High-performance concurrent operations
- **Error Resilience**: Graceful handling of missing dependencies

```bash
pip install -U cogents-smith
```

**Use Cases**: Rapid agent development, conversational data collection, deep research, market intelligence, web data extraction, multi-modal processing

### 3. [cogents-browser-use](https://github.com/caesar0301/cogents-browser-use/) 🌐

[![PyPI version](https://img.shields.io/pypi/v/cogents-browser-use.svg)](https://pypi.org/project/cogents-browser-use/)

**AI-powered browser automation adapted from browser-use on the COGENTS stack.**

#### Features
- Natural language browser control
- Intelligent web navigation
- Automated interaction with web elements
- Built on COGENTS core abstractions
- Support for headless and headed modes

```bash
pip install -U cogents-browser-use
```

**Use Cases**: Web scraping, automated testing, data extraction, web interaction automation

### 4. [wizsearch](https://github.com/caesar0301/wizsearch/) 🔍

[![PyPI version](https://img.shields.io/pypi/v/wizsearch.svg)](https://pypi.org/project/wizsearch/)

**Unified Python library for searching across multiple search engines with a consistent interface.**

#### Features
- **Multiple Search Engines**: Baidu, Bing, Brave, DuckDuckGo, Google, Google AI, SearxNG, Tavily, WeChat
- **Unified Interface**: Single API with consistent `SearchResult` format
- **Multi-Engine Aggregation**: Concurrent searches with round-robin result merging
- **Page Crawling**: Built-in web page content extraction using Crawl4AI
- **Semantic Search**: Optional vector-based semantic search with local storage
- **Full Async/Await Support**: High-performance asynchronous operations

```bash
pip install -U wizsearch
```

**Use Cases**: Multi-source search, web content aggregation, semantic search, research automation

## Additional Resources

- **DeepWiki Documentation**: 
  - [cogents-core](https://deepwiki.com/caesar0301/cogents-core)
  - [cogents-smith](https://deepwiki.com/caesar0301/cogents-smith)
- **Philosophy**: [Multi-Agent Systems Talk](https://github.com/caesar0301/mas-talk-2508/blob/master/mas-talk-xmingc.pdf)
## 🌟 Acknowledgments

COGENTS builds upon and integrates with several excellent projects:
- Tencent [Youtu-agent](https://github.com/Tencent/Youtu-agent) for toolkit integration
- [browser-use](https://github.com/browser-use/browser-use) for browser automation foundations
- [LangGraph](https://github.com/langchain-ai/langgraph) for workflow orchestration
- The open-source community for continuous inspiration and support
