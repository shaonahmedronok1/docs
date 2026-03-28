// ============================================================
//  LINKS.DIR — Gruvbox Hard Dark
//  Typst 0.11+   compile: typst compile links_dir.typ
// ============================================================

// ── Page ────────────────────────────────────────────────────
#set page(
  paper: "a4",
  margin: (top: 9mm, bottom: 9mm, left: 8mm, right: 8mm),
  fill: rgb("#1d2021"),
)

// ── Fonts ───────────────────────────────────────────────────
#set text(font: "DejaVu Sans", size: 11.5pt, fill: rgb("#ebdbb2"))

// ── Gruvbox Hard Dark Palette ───────────────────────────────
#let bg      = rgb("#1d2021")
#let bg1     = rgb("#282828")
#let bg2     = rgb("#3c3836")
#let bg3     = rgb("#504945")
#let fg      = rgb("#ebdbb2")
#let fg2     = rgb("#d5c4a1")
#let fg3     = rgb("#a89984")

#let c-orange  = rgb("#fe8019")
#let c-orange2 = rgb("#d65d0e")
#let c-aqua    = rgb("#8ec07c")
#let c-aqua2   = rgb("#689d6a")
#let c-blue    = rgb("#83a598")
#let c-blue2   = rgb("#458588")
#let c-purple  = rgb("#d3869b")
#let c-purple2 = rgb("#b16286")
#let c-yellow  = rgb("#fabd2f")
#let c-yellow2 = rgb("#d79921")
#let c-red     = rgb("#fb4934")
#let c-red2    = rgb("#cc241d")
#let c-green   = rgb("#b8bb26")

// ── Helpers ─────────────────────────────────────────────────

// Monospace tag label (the colored badge in section header)
#let tag(t, accent) = box(
  fill: accent.lighten(80%).darken(30%),
  stroke: none,
  radius: 3pt,
  inset: (x: 5pt, y: 2pt),
  text(font: "DejaVu Sans Mono", size: 9.5pt, weight: "bold", fill: accent, t)
)

// Section header bar
#let sec-head(badge, title, accent) = {
  box(
    width: 100%,
    fill: bg1,
    stroke: (left: 2.5pt + accent, rest: none),
    inset: (left: 7pt, right: 7pt, top: 6pt, bottom: 6pt),
    {
      tag(badge, accent)
      h(7pt)
      text(font: "DejaVu Sans Mono", size: 10pt, weight: "bold",
           fill: accent, tracking: 0.05em, upper(title))
    }
  )
}

// Dot bullet
#let dot(accent) = box(
  width: 5pt, height: 5pt,
  baseline: -0.5pt,
  circle(radius: 2.5pt, fill: accent)
)

// Single link row
#let lnk(label, url, accent, href: "") = {
  let dest = if href == "" { url } else { href }
  link("https://" + dest)[
    #box(
      width: 100%,
      fill: none,
      inset: (x: 8pt, y: 4pt),
      {
        dot(accent)
        h(6pt)
        stack(dir: ttb,
          text(size: 11pt, fill: accent, label),
          v(2pt),
          text(font: "DejaVu Sans Mono", size: 8pt, fill: fg3, dest),
        )
      }
    )
  ]
}

// Thin divider
#let hdiv = line(length: 100%, stroke: 0.4pt + bg2)

// Section wrapper — full width
#let section(badge, title, accent, body) = {
  block(
    width: 100%,
    stroke: 0.5pt + bg3,
    radius: 5pt,
    clip: true,
    fill: bg1,
    spacing: 0pt,
    {
      sec-head(badge, title, accent)
      hdiv
      body
    }
  )
  v(5pt)
}

// Two-column body helper (for full-width sections)
#let two-col(left-links, right-links) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 0pt,
    left-links,
    right-links,
  )
}

// ── Masthead ────────────────────────────────────────────────
#block(
  width: 100%,
  below: 0pt,
  above: 0pt,
  {
    text(font: "DejaVu Sans Mono", size: 17pt, weight: "bold", fill: c-yellow)[
      #text(fill: c-green)[~/] LINKS.DIR
    ]
    h(12pt)
    text(font: "DejaVu Sans Mono", size: 9.5pt, fill: fg3)[
      linux · cli · nix · dots · reference
    ]
  }
)
#line(length: 100%, stroke: 0.5pt + bg3)
#v(6pt)

// ═══════════════════════════════════════════════════════════
//  ROW 1 — GNU Core  |  Arch Wiki
// ═══════════════════════════════════════════════════════════
#grid(
  columns: (1fr, 1fr),
  gutter: 6pt,

  // ── GNU / Linux Core ──────────────────────────────────────
  section("GNU", "GNU / Linux Core", c-orange, {
    lnk("linux.die.net", "linux.die.net", c-orange)
    hdiv
    lnk("GNU Coreutils Manual", "gnu.org/software/coreutils/manual", c-orange)
    hdiv
    lnk("GNU LibreJS", "gnu.org/software/librejs", c-orange)
    hdiv
    lnk("GNU FTP Mirrors", "gnu.org/prep/ftp.html", c-orange)
    hdiv
    lnk("GNU All Manuals", "gnu.org/manual/blurbs.html", c-orange)
  }),

  // ── Arch Wiki ─────────────────────────────────────────────
  section("ARCH", "Arch Wiki", c-yellow, {
    lnk("ArchWiki Main", "wiki.archlinux.org/title/Main_page", c-yellow)
    hdiv
    lnk("Core Utilities", "wiki.archlinux.org/title/Core_utilities", c-yellow)
    hdiv
    lnk("Bash", "wiki.archlinux.org/title/Bash", c-yellow)
    hdiv
    lnk("Stack Overflow", "stackoverflow.com/questions", c-yellow)
    hdiv
    lnk("Unix & Linux Stack Exchange", "unix.stackexchange.com", c-yellow)
  }),
)

// ═══════════════════════════════════════════════════════════
//  ROW 2 — CLI / Shell  |  Ricing / Wayland
// ═══════════════════════════════════════════════════════════
#grid(
  columns: (1fr, 1fr),
  gutter: 6pt,

  // ── CLI / Shell ───────────────────────────────────────────
  section("CLI", "CLI / Shell", c-aqua, {
    lnk("CommandLineFu — Top Voted",     "commandlinefu.com/commands/browse/sort-by-votes", c-aqua)
    hdiv
    lnk("CommandLineFu — Browse",        "commandlinefu.com/commands/browse", c-aqua)
    hdiv
    lnk("The Art of Command Line",       "github.com/jlevy/the-art-of-command-line", c-aqua)
    hdiv
    lnk("Awesome Shell",                 "github.com/alebcay/awesome-shell", c-aqua)
    hdiv
    lnk("Awesome CLI Apps",              "github.com/agarrharr/awesome-cli-apps", c-aqua)
    hdiv
    lnk("Awesome CLI Apps CSV",          "github.com/toolleeo/awesome-cli-apps-in-a-csv", c-aqua)
    hdiv
    lnk("Awesome TUIs",                  "github.com/rothgar/awesome-tuis", c-aqua)
    hdiv
    lnk("Terminals Are Sexy",            "github.com/k4m4/terminals-are-sexy", c-aqua)
    hdiv
    lnk("Modern Tools",                  "github.com/mhoye/moderntools", c-aqua)
  }),

  // ── Ricing / Wayland ──────────────────────────────────────
  section("RICE", "Ricing / Wayland", c-orange, {
    lnk("Awesome Wayland",               "github.com/natpen/awesome-wayland", c-orange)
    hdiv
    lnk("GNU/Linux Ricing — IGWiki",     "igwiki.lyci.de/wiki/GNU/Linux_ricing", c-orange)
    hdiv
    lnk("Recommended GNU/Linux Software","igwiki.lyci.de/wiki/List_of_recommended_GNU/Linux_software", c-orange)
    hdiv
    lnk("Gorgeous GRUB Themes",          "github.com/Jacksaur/Gorgeous-GRUB", c-orange)
    hdiv
    lnk("Dotfiles Substack",             "dotfiles.substack.com", c-orange)
    hdiv
    lnk("DistroTube",                    "distro.tube", c-orange)
    hdiv
    lnk("FMHY — Free Media Heck Yeah",   "fmhy.net", c-orange)
    hdiv
    lnk("Luke Smith — Programs",         "lukesmith.xyz/programs", c-orange)
    hdiv
    lnk("cat-v — Harmful Software",      "harmful.cat-v.org/software", c-orange)
  }),
)

// ═══════════════════════════════════════════════════════════
//  ROW 3 — Reference  |  Security
// ═══════════════════════════════════════════════════════════
#grid(
  columns: (1fr, 1fr),
  gutter: 6pt,

  // ── Reference ─────────────────────────────────────────────
  section("REF", "Reference & Guides", c-yellow, {
    lnk("Mayfrost — Alternatives",       "github.com/mayfrost/guides/blob/master/ALTERNATIVES.md", c-yellow)
    hdiv
    lnk("Mayfrost — Checklist",          "github.com/mayfrost/guides/blob/master/CHECKLIST.md", c-yellow)
  }),

  // ── Security ──────────────────────────────────────────────
  section("SEC", "Security / Privacy", c-red, {
    lnk("LUKS Encryption Guide",         "comfy.guide/client/luks", c-red)
    hdiv
    lnk("GPG Guide",                     "comfy.guide/client/gpg", c-red)
  }),
)

// ═══════════════════════════════════════════════════════════
//  FULL WIDTH — NixOS Official Docs
// ═══════════════════════════════════════════════════════════
#section("NIX", "NixOS — Official Docs", c-blue, {
  two-col(
    {
      lnk("NixOS Manual (Stable)",       "nixos.org/manual/nixos/stable", c-blue)
      hdiv
      lnk("Home Manager Docs",           "nix-community.github.io/home-manager", c-blue)
      hdiv
      lnk("Flakes — NixOS Wiki",         "wiki.nixos.org/wiki/Flakes", c-blue)
      hdiv
      lnk("Package Search",              "search.nixos.org/packages", c-blue)
      hdiv
      lnk("nix.dev — Official Guides",   "nix.dev", c-blue)
    },
    {
      lnk("NixOS Wiki",                  "nixos.wiki/wiki/Main_Page", c-blue)
      hdiv
      lnk("NixOS Discourse",             "discourse.nixos.org", c-blue)
      hdiv
      lnk("Nix Community",               "nix-community.org", c-blue)
      hdiv
      lnk("Awesome Nix",                 "nix-community.github.io/awesome-nix", c-blue)
      hdiv
      lnk("Zero to Nix",                 "zero-to-nix.com", c-blue)
    },
  )
})

// ═══════════════════════════════════════════════════════════
//  FULL WIDTH — Nix Learning
// ═══════════════════════════════════════════════════════════
#section("LEARN", "Nix Learning", c-blue, {
  two-col(
    {
      lnk("NixOS & Flakes Book",         "nixos-and-flakes.thiscute.world", c-blue)
      hdiv
      lnk("How to Learn Nix",            "ianthehenry.com/posts/how-to-learn-nix", c-blue)
      hdiv
      lnk("Nix From the Ground Up",      "zombiezen.com/blog/2021/12/nix-from-the-ground-up", c-blue)
    },
    {
      lnk("Full Time Nix",               "fulltimenix.com", c-blue)
      hdiv
      lnk("NixOS Journey — Home Manager","tech.aufomm.com/my-nixos-journey-home-manager", c-blue)
      hdiv
      lnk("NixOS Config Walkthrough",    "snowytrees.dev/blog/nixos-config", c-blue)
    },
  )
})

// ═══════════════════════════════════════════════════════════
//  FULL WIDTH — Worth-Dots
// ═══════════════════════════════════════════════════════════
#section("DOTS", "Worth-Dots — NixOS Dotfiles", c-purple, {
  two-col(
    {
      lnk("Elysium",                     "github.com/ZhengJiawen44/Elysium", c-purple)
      hdiv
      lnk("PartyWumpus dotfiles",        "github.com/PartyWumpus/dotfiles", c-purple)
      hdiv
      lnk("Euneua nixos-config",         "github.com/Euneua/nixos-config", c-purple)
    },
    {
      lnk("NixOS Snowflake — Colour SVG","github.com/NixOS/nixos-artwork/blob/master/logo/nix-snowflake-colours.svg", c-purple)
      hdiv
      lnk("NixOS Snowflake — White SVG", "github.com/NixOS/nixos-artwork/blob/master/logo/nix-snowflake-white.svg", c-purple)
    },
  )
})

// ── Footer ──────────────────────────────────────────────────
#v(2pt)
#line(length: 100%, stroke: 0.4pt + bg3)
#v(2pt)
#align(right,
  text(font: "DejaVu Sans Mono", size: 8pt, fill: bg3,
    "links.dir · gruvbox hard dark · all links clickable"
  )
)
