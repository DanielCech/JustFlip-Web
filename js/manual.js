// Manual pages: highlight the "On this page" entry for the section in view.
(() => {
  const links = Array.from(document.querySelectorAll('.m-toc a[href^="#"]'));
  if (!links.length || !('IntersectionObserver' in window)) return;

  const byId = new Map(links.map((a) => [decodeURIComponent(a.hash.slice(1)), a]));
  const headings = Array.from(byId.keys())
    .map((id) => document.getElementById(id))
    .filter(Boolean);

  const setActive = (id) => links.forEach((a) => a.classList.toggle('is-active', a === byId.get(id)));

  const visible = new Set();
  const io = new IntersectionObserver((entries) => {
    entries.forEach((e) => (e.isIntersecting ? visible.add(e.target) : visible.delete(e.target)));
    const first = headings.find((h) => visible.has(h));
    if (first) setActive(first.id);
  }, { rootMargin: '-80px 0px -65% 0px' });

  headings.forEach((h) => io.observe(h));
})();
