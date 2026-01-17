# 🏋️ GymMini（ジムミニ）

**筋肉至上主義のアクロバティックランナーゲーム**

[![Development Phase](https://img.shields.io/badge/Phase-Setup-blue)]()
[![Engine](https://img.shields.io/badge/Engine-Godot%204.x-478CBF)]()
[![Platform](https://img.shields.io/badge/Platform-Mobile-green)]()

---

## 📖 概要

GymMiniは、体操をコンセプトとしたミニゲームを提供するアプリケーションです。
将来的にはいくつかのミニゲームを提供する予定です！
今のところはバク転しながらプロテインを集める爽快感満載のエンドレスランナーゲームがメインコンテンツです。

### ✨ 主な特徴

- 🤸 **アクロバティックな動き**: バク転と宙返りで進む独特の移動感
- 💪 **プロテイン回収**: 筋肉的なテーマに沿ったアイテム収集
- 🎪 **体操器具の障害物**: 鉄棒、鞍馬、跳馬などバリエーション豊富
- 📱 **モバイル対応**: スマートフォンで気軽にプレイ可能
- 🎨 **ユニークな世界観**: 筋肉とスポーツが融合したシュールな雰囲気

---

## 🎮 ゲームの流れ

1. **走る**: 自動でバク転しながら前進
2. **ジャンプ**: タップで宙返りジャンプ（2段ジャンプ可能）
3. **回避**: 体操器具の障害物を避ける
4. **収集**: プロテインを集めてスコアアップ
5. **挑戦**: 速度が上がるほど難易度が上昇

---

## 🛠️ 技術スタック

### 開発エンジン: Godot Engine 4.x

**Godotを選んだ理由**:
- ✅ **オープンソース**: 無料で商用利用可能
- ✅ **軽量**: インストールサイズが小さく、起動が高速
- ✅ **2D開発に強い**: 2Dゲーム開発に最適化された機能
- ✅ **クロスプラットフォーム**: PC、モバイル、Web対応
- ✅ **学習コスト低**: GDScriptはPython風で初心者にも優しい
- ✅ **アクティブなコミュニティ**: 豊富なチュートリアルと活発な開発

### 代替ツール比較

| エンジン | メリット | デメリット |
|---------|---------|-----------|
| **Godot** | 軽量、オープンソース、2D特化 | 3D機能はUnityに劣る |
| **Unity** | アセット豊富、大規模開発向け | ライセンス料、重い |
| **Phaser** | Web特化、JS開発 | モバイルネイティブには不向き |
| **Flutter (Flame)** | モバイルアプリ開発と統合 | ゲーム専用ではない |

**結論**: 2Dモバイルゲームには **Godot** が最適解！

---

## 📋 開発環境構築手順

### 前提条件

- OS: Windows 10/11、macOS 11以降、Linux
- メモリ: 4GB以上推奨
- ストレージ: 2GB以上の空き容量
- Git: インストール済み

### ステップ1: リポジトリのクローン

```bash
git clone <repository-url>
cd gym-mini
```

### ステップ2: Godotのインストール（明日実施予定）

#### macOS
```bash
# Homebrewを使用
brew install --cask godot

# または公式サイトからダウンロード
# https://godotengine.org/download/
```

#### Windows
```bash
# Scoopを使用
scoop install godot

# またはWindows Storeから
# または公式サイトからダウンロード
```

#### Linux
```bash
# Snapを使用
sudo snap install godot

# またはFlatpakを使用
flatpak install flathub org.godotengine.Godot
```

### ステップ3: プロジェクトを開く（明日実施予定）

1. Godotを起動
2. 「Import」をクリック
3. `gym-mini`フォルダの`project.godot`を選択
4. 「Import & Edit」をクリック

### ステップ4: VSCode拡張機能のインストール（推奨）

```bash
code --install-extension geequlim.godot-tools
code --install-extension eamodio.gitlens
```

---

## 📁 プロジェクト構造

```
gym-mini/
├── .github/
│   ├── instructions/          # 開発ガイドライン
│   │   └── development-guidelines.md
│   └── specification/         # ゲーム仕様書
│       └── game-specification.md
├── project/                   # Godotプロジェクトフォルダ（明日作成予定）
│   ├── scenes/               # シーンファイル
│   ├── scripts/              # GDScriptファイル
│   ├── assets/               # グラフィック・サウンド
│   └── resources/            # Godotリソース
├── docs/                      # 追加ドキュメント（今後作成）
├── README.md                  # このファイル
└── TODO.md                    # タスク管理（今後作成）
```

---

## 🚀 開発フェーズ

| Phase | 内容 | 状態 | 期間目安 |
|-------|------|------|---------|
| **Phase 1** | プロジェクト構造・仕様書整備 | ✅ 完了 | 1日 |
| **Phase 2** | 開発環境セットアップ | 📝 予定 | 1日 |
| **Phase 3** | プロトタイプ作成 | ⏳ 未着手 | 3-5日 |
| **Phase 4** | ゲームシステム実装 | ⏳ 未着手 | 1-2週間 |
| **Phase 5** | グラフィック・サウンド実装 | ⏳ 未着手 | 1週間 |
| **Phase 6** | テスト・調整 | ⏳ 未着手 | 3-5日 |
| **Phase 7** | リリース準備 | ⏳ 未着手 | 2-3日 |

---

## 📚 ドキュメント

- **[ゲーム仕様書](.github/specification/game-specification.md)**: 詳細な仕様とゲームデザイン
- **[開発ガイドライン](.github/instructions/development-guidelines.md)**: コーディング規約とベストプラクティス

---

## 🎯 今後の展望

### Phase 2-3（近日中）
- [ ] Godotプロジェクトの初期化
- [ ] プレイヤーキャラクターの基本実装
- [ ] ジャンプ機能のプロトタイプ
- [ ] 簡易的な障害物配置

### Phase 4-5（中期）
- [ ] 自動スクロールシステム
- [ ] スコアシステム
- [ ] アニメーション実装
- [ ] エフェクト追加
- [ ] BGM・効果音統合

### Phase 6-7（後期）
- [ ] バランス調整
- [ ] パフォーマンス最適化
- [ ] モバイルビルド
- [ ] ストア申請準備

### 将来的な拡張
- 🌐 オンラインランキング
- 👕 キャラクターカスタマイズ
- 🏖️ 複数ステージ（ビーチ、公園など）
- 🏆 アチーブメントシステム
- 🎵 BGMバリエーション追加

---

## 🤝 貢献ガイド

### コミット規則

```
[Phase番号] 機能名: 変更内容の要約

詳細な説明（必要に応じて）
```

### コメント記載ルール

- **FYI**: 補足情報、設計意図
- **FIXME**: 既知の問題、要改善箇所
- **TODO**: 未実装機能
- **NOTE**: 重要な注意事項

詳細は[開発ガイドライン](.github/instructions/development-guidelines.md)を参照。

---

## 📞 サポート・質問

### Godot学習リソース

- [Godot公式ドキュメント（日本語）](https://docs.godotengine.org/ja/stable/)
- [Godot公式チュートリアル](https://docs.godotengine.org/en/stable/community/tutorials.html)
- [GDScript基礎](https://docs.godotengine.org/ja/stable/tutorials/scripting/gdscript/gdscript_basics.html)
- [Godot Q&A](https://ask.godotengine.org/)

### トラブルシューティング

問題が発生した場合：
1. エラーメッセージを記録
2. Godot公式ドキュメントで確認
3. GitHub Issuesで類似事例を検索
4. 開発チームに質問

---

## 📄 ライセンス

TBD（今後決定）

---

## 🏆 クレジット

**開発チーム**: GymMiniプロジェクトチーム  
**エンジン**: [Godot Engine](https://godotengine.org/)  
**コンセプト**: 筋肉と体操の融合

---

**Let's Bulk Up! 💪🎮**

