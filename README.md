# aazh2026 Homebrew Tap

```bash
brew tap aazh2026/vlab
brew install vlab
```

Or run it without installing:

```bash
brew install aazh2026/vlab/vlab
vlab --help
```

## Formulae

| Formula | Version | What it is |
|---|---|---|
| **[vlab](https://github.com/aazh2026/vlab)** | 1.1.1 | Zero-dependency portfolio backtesting lab with a look-ahead guard and out-of-sample validity checks |
| [specgate](https://github.com/aazh2026/specgate) | 0.1.4 | Requirement coverage for your codebase — like test coverage, but for acceptance criteria. Deterministic, no LLM at runtime. |

### vlab

```bash
vlab --help        # CLI: fetch / report / serve / test / compare / validate
vlab test          # runs the 77-test regression suite
```

Python standard library only — no third-party packages, no network required for
the test suite. See the [repository](https://github.com/aazh2026/vlab) for the
backtest methodology, the engine defects it pins, and the live dashboard.

> All results are backtests on historical data. Past performance does not predict
> future returns, and nothing here is investment advice.
