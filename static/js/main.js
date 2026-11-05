// Main JavaScript file

// アーティストページ
document.addEventListener('DOMContentLoaded', () => {
    // アルファベットクイックナビゲーションのスムーススクロール処理
    const navLinks = document.querySelectorAll('.alphabet-nav a');

    navLinks.forEach(link => {
        link.addEventListener('click', (e) => {
            e.preventDefault();
            const targetId = link.getAttribute('href');
            const targetElement = document.querySelector(targetId);

            if (targetElement) {
                // ヘッダー固定分のオフセット調整を含めてスムーズスクロール
                const headerOffset = 80;
                const elementPosition = targetElement.getBoundingClientRect().top;
                const offsetPosition = elementPosition + window.pageYOffset - headerOffset;

                window.scrollTo({
                    top: offsetPosition,
                    behavior: 'smooth'
                });
            }
        });
    });
});

// ワールドページ
document.addEventListener('DOMContentLoaded', () => {
    // 6州ナビゲーション・A-Zナビゲーション共通のスムーススクロール処理
    const navLinks = document.querySelectorAll('.region-nav a, .alphabet-nav a');

    navLinks.forEach(link => {
        link.addEventListener('click', (e) => {
            const targetId = link.getAttribute('href');
            if (targetId && targetId.startsWith('#')) {
                e.preventDefault();
                const targetElement = document.querySelector(targetId);

                if (targetElement) {
                    const headerOffset = 80; // ヘッダー固定分のオフセット
                    const elementPosition = targetElement.getBoundingClientRect().top;
                    const offsetPosition = elementPosition + window.pageYOffset - headerOffset;

                    window.scrollTo({
                        top: offsetPosition,
                        behavior: 'smooth'
                    });
                }
            }
        });
    });
});

// 管理ページ

function editArtist(id, name, isSeen, description) {
    document.getElementById('form-title').textContent = 'EDIT ARTIST ✏️';
    document.getElementById('artist-id').value = id;
    document.getElementById('artist-name').value = name;
    document.getElementById('artist-status').value = isSeen;
    document.getElementById('artist-description').value = description;
    document.getElementById('btn-cancel').style.display = 'inline-block';
    }

// フォームのリセット（キャンセル時）
function resetForm() {
    document.getElementById('form-title').textContent = 'ADD NEW ARTIST ➕';
    document.getElementById('artist-form').reset();
    document.getElementById('artist-id').value = '';
    document.getElementById('btn-cancel').style.display = 'none';
    }
