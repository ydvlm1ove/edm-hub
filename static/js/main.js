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