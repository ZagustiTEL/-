using System;
using System.Data;
using System.Data.SQLite;
using System.Drawing;
using System.Windows.Forms;

namespace SupportDesk.forms
{
    public partial class KnowledgeBaseForm : Form
    {
        private readonly string _connectionString;
        private readonly bool _isAdmin;

        private TextBox txtSearch;
        private ComboBox cmbCategory;
        private ListBox lstArticles;
        private TextBox txtTitle;
        private RichTextBox rtbContent;
        private Button btnSearch;
        private Button btnAdd;
        private Button btnSave;
        private Button btnDelete;
        private Label lblStatus;

        private int? _currentArticleId = null;

        public KnowledgeBaseForm(string connectionString, bool isAdmin = false)
        {
            _connectionString = connectionString;
            _isAdmin = isAdmin;
            InitializeComponent();
            EnsureTableExists();
            LoadCategories();
            LoadArticles();
        }

        private void InitializeComponent()
        {
            this.Text = "База знаний";
            this.Size = new Size(1050, 680);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.BackColor = Color.FromArgb(248, 250, 252);
            this.Font = new Font("Segoe UI", 9.5f);

            // === Верхняя панель поиска ===
            Panel panelSearch = new Panel
            {
                Dock = DockStyle.Top,
                Height = 60,
                BackColor = Color.FromArgb(15, 23, 42)
            };

            txtSearch = new TextBox
            {
                Location = new Point(20, 16),
                Width = 320,
                Height = 28,
                PlaceholderText = "Поиск по названию или тексту..."
            };

            cmbCategory = new ComboBox
            {
                Location = new Point(360, 16),
                Width = 180,
                DropDownStyle = ComboBoxStyle.DropDownList
            };

            btnSearch = new Button
            {
                Text = "Найти",
                Location = new Point(560, 14),
                Size = new Size(90, 30),
                BackColor = Color.FromArgb(59, 130, 246),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat
            };
            btnSearch.Click += (s, e) => LoadArticles();

            panelSearch.Controls.AddRange(new Control[] { txtSearch, cmbCategory, btnSearch });

            // === Левая панель — список статей ===
            Panel panelLeft = new Panel
            {
                Dock = DockStyle.Left,
                Width = 320,
                Padding = new Padding(10)
            };

            Label lblList = new Label
            {
                Text = "Статьи",
                Font = new Font("Segoe UI", 11, FontStyle.Bold),
                Dock = DockStyle.Top,
                Height = 30
            };

            lstArticles = new ListBox
            {
                Dock = DockStyle.Fill,
                Font = new Font("Segoe UI", 10),
                BorderStyle = BorderStyle.FixedSingle
            };
            lstArticles.SelectedIndexChanged += LstArticles_SelectedIndexChanged;

            panelLeft.Controls.Add(lstArticles);
            panelLeft.Controls.Add(lblList);

            // === Правая панель — содержимое ===
            Panel panelRight = new Panel
            {
                Dock = DockStyle.Fill,
                Padding = new Padding(15, 10, 15, 10)
            };

            Label lblTitle = new Label
            {
                Text = "Заголовок:",
                Location = new Point(15, 10),
                AutoSize = true
            };

            txtTitle = new TextBox
            {
                Location = new Point(15, 32),
                Width = 650,
                Height = 28,
                ReadOnly = !_isAdmin
            };

            Label lblContent = new Label
            {
                Text = "Содержание:",
                Location = new Point(15, 70),
                AutoSize = true
            };

            rtbContent = new RichTextBox
            {
                Location = new Point(15, 92),
                Size = new Size(650, 420),
                BorderStyle = BorderStyle.FixedSingle,
                ReadOnly = !_isAdmin,
                Font = new Font("Segoe UI", 10)
            };

            // Кнопки (только для админа)
            btnAdd = new Button
            {
                Text = "Новая статья",
                Location = new Point(15, 530),
                Size = new Size(120, 32),
                BackColor = Color.FromArgb(34, 197, 94),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Visible = _isAdmin
            };
            btnAdd.Click += BtnAdd_Click;

            btnSave = new Button
            {
                Text = "Сохранить",
                Location = new Point(150, 530),
                Size = new Size(110, 32),
                BackColor = Color.FromArgb(59, 130, 246),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Visible = _isAdmin
            };
            btnSave.Click += BtnSave_Click;

            btnDelete = new Button
            {
                Text = "Удалить",
                Location = new Point(275, 530),
                Size = new Size(100, 32),
                BackColor = Color.FromArgb(239, 68, 68),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Visible = _isAdmin
            };
            btnDelete.Click += BtnDelete_Click;

            lblStatus = new Label
            {
                Location = new Point(400, 536),
                AutoSize = true,
                ForeColor = Color.FromArgb(100, 116, 139)
            };

            panelRight.Controls.AddRange(new Control[] {
                lblTitle, txtTitle, lblContent, rtbContent,
                btnAdd, btnSave, btnDelete, lblStatus
            });

            this.Controls.Add(panelRight);
            this.Controls.Add(panelLeft);
            this.Controls.Add(panelSearch);
        }

        private void EnsureTableExists()
        {
            using (var conn = new SQLiteConnection(_connectionString))
            {
                conn.Open();
                string sql = @"
                    CREATE TABLE IF NOT EXISTS KnowledgeBase (
                        Id INTEGER PRIMARY KEY AUTOINCREMENT,
                        Title TEXT NOT NULL,
                        Category TEXT,
                        Content TEXT,
                        CreatedAt TEXT DEFAULT CURRENT_TIMESTAMP,
                        UpdatedAt TEXT
                    );";
                using (var cmd = new SQLiteCommand(sql, conn))
                    cmd.ExecuteNonQuery();
            }
        }

        private void LoadCategories()
        {
            cmbCategory.Items.Clear();
            cmbCategory.Items.Add("Все категории");

            using (var conn = new SQLiteConnection(_connectionString))
            {
                conn.Open();
                string sql = "SELECT DISTINCT Category FROM KnowledgeBase WHERE Category IS NOT NULL AND Category != '' ORDER BY Category";
                using (var cmd = new SQLiteCommand(sql, conn))
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                        cmbCategory.Items.Add(reader.GetString(0));
                }
            }
            cmbCategory.SelectedIndex = 0;
        }

        private void LoadArticles()
        {
            lstArticles.Items.Clear();
            _currentArticleId = null;
            txtTitle.Clear();
            rtbContent.Clear();

            string search = txtSearch.Text.Trim();
            string category = cmbCategory.SelectedItem?.ToString();

            using (var conn = new SQLiteConnection(_connectionString))
            {
                conn.Open();
                string sql = "SELECT Id, Title, Category FROM KnowledgeBase WHERE 1=1";

                if (!string.IsNullOrEmpty(search))
                    sql += " AND (Title LIKE @search OR Content LIKE @search)";
                if (!string.IsNullOrEmpty(category) && category != "Все категории")
                    sql += " AND Category = @category";

                sql += " ORDER BY Title";

                using (var cmd = new SQLiteCommand(sql, conn))
                {
                    if (!string.IsNullOrEmpty(search))
                        cmd.Parameters.AddWithValue("@search", "%" + search + "%");
                    if (!string.IsNullOrEmpty(category) && category != "Все категории")
                        cmd.Parameters.AddWithValue("@category", category);

                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            int id = reader.GetInt32(0);
                            string title = reader.GetString(1);
                            string cat = reader.IsDBNull(2) ? "" : reader.GetString(2);
                            string display = string.IsNullOrEmpty(cat) ? title : $"[{cat}] {title}";
                            lstArticles.Items.Add(new ArticleItem { Id = id, Title = display });
                        }
                    }
                }
            }

            lblStatus.Text = $"Найдено: {lstArticles.Items.Count}";
        }

        private void LstArticles_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lstArticles.SelectedItem is ArticleItem item)
            {
                LoadArticle(item.Id);
            }
        }

        private void LoadArticle(int id)
        {
            using (var conn = new SQLiteConnection(_connectionString))
            {
                conn.Open();
                string sql = "SELECT Title, Content, Category FROM KnowledgeBase WHERE Id = @id";
                using (var cmd = new SQLiteCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            _currentArticleId = id;
                            txtTitle.Text = reader.GetString(0);
                            rtbContent.Text = reader.IsDBNull(1) ? "" : reader.GetString(1);
                        }
                    }
                }
            }
        }

        private void BtnAdd_Click(object sender, EventArgs e)
        {
            _currentArticleId = null;
            txtTitle.Clear();
            rtbContent.Clear();
            txtTitle.Focus();
            lblStatus.Text = "Новая статья";
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtTitle.Text))
            {
                MessageBox.Show("Введите заголовок статьи.", "Внимание",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            string category = cmbCategory.SelectedItem?.ToString();
            if (category == "Все категории") category = "Общее";

            using (var conn = new SQLiteConnection(_connectionString))
            {
                conn.Open();

                if (_currentArticleId == null)
                {
                    // Добавление
                    string sql = @"INSERT INTO KnowledgeBase (Title, Category, Content, UpdatedAt) 
                                   VALUES (@title, @cat, @content, datetime('now'))";
                    using (var cmd = new SQLiteCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@title", txtTitle.Text.Trim());
                        cmd.Parameters.AddWithValue("@cat", category);
                        cmd.Parameters.AddWithValue("@content", rtbContent.Text);
                        cmd.ExecuteNonQuery();
                    }
                    lblStatus.Text = "Статья добавлена";
                }
                else
                {
                    // Обновление
                    string sql = @"UPDATE KnowledgeBase 
                                   SET Title = @title, Content = @content, UpdatedAt = datetime('now') 
                                   WHERE Id = @id";
                    using (var cmd = new SQLiteCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@title", txtTitle.Text.Trim());
                        cmd.Parameters.AddWithValue("@content", rtbContent.Text);
                        cmd.Parameters.AddWithValue("@id", _currentArticleId.Value);
                        cmd.ExecuteNonQuery();
                    }
                    lblStatus.Text = "Статья обновлена";
                }
            }

            LoadCategories();
            LoadArticles();
        }

        private void BtnDelete_Click(object sender, EventArgs e)
        {
            if (_currentArticleId == null) return;

            var result = MessageBox.Show("Удалить эту статью?", "Подтверждение",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (result != DialogResult.Yes) return;

            using (var conn = new SQLiteConnection(_connectionString))
            {
                conn.Open();
                using (var cmd = new SQLiteCommand("DELETE FROM KnowledgeBase WHERE Id = @id", conn))
                {
                    cmd.Parameters.AddWithValue("@id", _currentArticleId.Value);
                    cmd.ExecuteNonQuery();
                }
            }

            _currentArticleId = null;
            txtTitle.Clear();
            rtbContent.Clear();
            LoadArticles();
            lblStatus.Text = "Статья удалена";
        }

        private class ArticleItem
        {
            public int Id { get; set; }
            public string Title { get; set; }
            public override string ToString() => Title;
        }
    }
}
