#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_quant_backtest info
PYTHONPATH=src python -m gbt_quant_backtest check --payload '{}'
PYTHONPATH=src python -m gbt_quant_backtest run   --payload '{}'
