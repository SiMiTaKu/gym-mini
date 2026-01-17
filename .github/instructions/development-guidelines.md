# GymMini 開発ガイドライン

**最終更新**: 2026-01-17

---

## 1. 開発原則

### 1.1 基本方針
- **段階的開発**: 小さな単位で動作確認しながら進める
- **ログの重視**: 開発の経緯や判断理由を記録する
- **品質優先**: セキュリティと保守性を重視
- **学習重視**: Godot初心者でも理解できる実装を心がける

### 1.2 コミュニケーション
- わからないことは質問してから進める
- 仕様の不明点は明確化してから実装
- 定期的な進捗確認

---

## 2. コーディング規約

### 2.1 コメント記載ルール

#### FYI（For Your Information）
```gdscript
# FYI: この処理は将来的にマルチプレイ対応時に拡張予定
func calculate_score():
    pass
```
**用途**: 補足情報、将来の拡張性、設計意図の説明

#### FIXME
```gdscript
# FIXME: 現在は仮実装。パフォーマンス最適化が必要
func check_collision():
    pass
```
**用途**: 既知の問題、改善が必要な箇所、技術的負債

#### TODO
```gdscript
# TODO: エフェクト追加（Phase 5で実装）
func on_protein_collected():
    pass
```
**用途**: 未実装機能、今後のタスク

#### NOTE
```gdscript
# NOTE: Godot 4.2以降では別のAPIを使用することを推奨
func legacy_method():
    pass
```
**用途**: 重要な注意事項、バージョン固有の情報

### 2.2 命名規則（GDScript）

```gdscript
# クラス名: PascalCase
class_name PlayerCharacter

# 定数: UPPER_SNAKE_CASE
const MAX_JUMP_HEIGHT = 200

# 変数: snake_case
var player_speed = 5.0
var is_jumping = false

# 関数: snake_case
func update_player_position():
    pass

# シグナル: snake_case（過去形が一般的）
signal player_died
signal protein_collected
```

### 2.3 ファイル構成規則

```
project/
├── scenes/          # シーンファイル (.tscn)
├── scripts/         # スクリプトファイル (.gd)
├── assets/          # リソースファイル
│   ├── sprites/     # 画像
│   ├── sounds/      # 音声
│   └── fonts/       # フォント
├── resources/       # Godotリソース (.tres)
└── tests/           # テストコード（将来実装）
```

---

## 3. Git運用ルール

### 3.1 ブランチ戦略
```
main          # 本番用（安定版）
├── develop   # 開発統合用
└── feature/* # 機能開発用
```

### 3.2 コミットメッセージ
```
[Phase番号] 機能名: 変更内容の要約

詳細な説明（必要に応じて）
```

**例**:
```
[Phase2] Setup: .github/specificationディレクトリの作成

仕様書を管理するための構造を整備
```

### 3.3 コミット粒度
- 1機能、1バグ修正 = 1コミット
- ドキュメント更新は別コミット
- 意味のある単位でコミット

---

## 4. 品質保証

### 4.1 レビュー観点
- [ ] コメントは適切に記載されているか
- [ ] 命名規則に従っているか
- [ ] セキュリティ上の問題はないか
- [ ] パフォーマンスへの配慮はあるか
- [ ] エッジケースは考慮されているか

### 4.2 テスト方針
- **Phase 3以降**: 各機能実装時に動作確認
- **Phase 6**: 総合的なプレイテスト
- 自動テストは可能な範囲で導入

### 4.3 セキュリティチェックリスト
- [ ] 外部入力の検証
- [ ] ファイルアクセスの権限確認
- [ ] 個人情報の非収集
- [ ] 依存ライブラリの脆弱性確認

---

## 5. 開発環境

### 5.1 必須ツール（明日以降インストール）
- Godot Engine 4.x（最新安定版）
- Git
- テキストエディタ（VSCode推奨）

### 5.2 推奨ツール
- **VSCode拡張機能**:
  - godot-tools（GDScript対応）
  - GitLens（Git履歴管理）
- **画像編集**: Aseprite, GIMP
- **サウンド編集**: Audacity

### 5.3 開発マシン要件
- OS: Windows / macOS / Linux
- メモリ: 4GB以上推奨
- ストレージ: 2GB以上の空き容量

---

## 6. ドキュメント管理

### 6.1 必須ドキュメント
- `README.md`: プロジェクト概要、セットアップ手順
- `.github/specification/`: 仕様書
- `.github/instructions/`: 開発ガイドライン

### 6.2 更新ルール
- 仕様変更時は必ず仕様書を更新
- バージョン番号と更新日を記載
- 変更履歴を残す

---

## 7. トラブルシューティング

### 7.1 問題発生時の手順
1. エラーメッセージを記録
2. 再現手順を確認
3. Godot公式ドキュメント確認
4. GitHub Issuesで類似事例を検索
5. 必要に応じて質問

### 7.2 参考リソース
- [Godot公式ドキュメント](https://docs.godotengine.org/)
- [Godot Q&A](https://ask.godotengine.org/)
- [GDScript スタイルガイド](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html)

---

## 8. Phase別開発ガイド

### Phase 2: 環境セットアップ（明日実施）
- [ ] Godotインストール
- [ ] プロジェクト作成
- [ ] 基本設定（解像度、入力マッピング）

### Phase 3: プロトタイプ
- [ ] プレイヤーキャラクター作成
- [ ] 基本移動実装
- [ ] ジャンプ機能実装
- [ ] カメラ追従

### Phase 4: ゲームシステム
- [ ] 自動スクロール実装
- [ ] 障害物生成システム
- [ ] 当たり判定実装
- [ ] スコアシステム

### Phase 5: ビジュアル・サウンド
- [ ] グラフィック差し替え
- [ ] アニメーション実装
- [ ] BGM・効果音追加
- [ ] エフェクト実装

### Phase 6: テスト・調整
- [ ] バランス調整
- [ ] バグ修正
- [ ] パフォーマンス最適化

### Phase 7: リリース準備
- [ ] ビルド設定
- [ ] アイコン・スクリーンショット作成
- [ ] ストア説明文作成

---

## 変更履歴

| 日付 | バージョン | 変更内容 |
|------|-----------|---------|
| 2026-01-17 | 1.0 | 初版作成 |

