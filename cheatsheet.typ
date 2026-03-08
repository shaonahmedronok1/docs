// ============================================================
// CLI CHEAT SHEET — Complete A-Z Guide
// ============================================================
#set document(
  title: "CLI Cheat Sheet — Complete A-Z Guide",
  author: "az",
  keywords: ("CLI", "Linux", "NixOS", "Bash", "Terminal"),
)

// ── COLOR PALETTE ─────────────────────────────────────────────────────────────
#let c1 = rgb("#e8457a")
#let c2 = rgb("#c2185b")
#let c3 = rgb("#f06292")
#let c4 = rgb("#ad1457")
#let ct = rgb("#2d1020")
#let cs = rgb("#880e4f")
#let cl = rgb("#c2185b")
#let cb = rgb("#f8bbd0")
#let bg = rgb("#fef9f0")
#let wm = rgb("#e8c0cc")

// ── COVER PAGE ────────────────────────────────────────────────────────────────
#page(fill: bg, margin: 0pt)[

  // ── WATERMARKS ──
  #place(top + left, dx: 12pt,  dy: 30pt)[#text(fill: wm, size: 48pt, font: ("Noto Sans",))[❯]]
  #place(top + left, dx: 500pt, dy: 20pt)[#text(fill: wm, size: 42pt, font: ("Noto Sans",))[✦]]
  #place(top + left, dx: 270pt, dy: 10pt)[#text(fill: wm, size: 34pt, font: ("Noto Sans",))[❯]]
  #place(top + left, dx: 60pt,  dy: 120pt)[#text(fill: wm, size: 38pt, font: ("Noto Sans",))[✦]]
  #place(top + left, dx: 490pt, dy: 110pt)[#text(fill: wm, size: 52pt, font: ("Noto Sans",))[❯]]
  #place(top + left, dx: 20pt,  dy: 260pt)[#text(fill: wm, size: 44pt, font: ("Noto Sans",))[✦]]
  #place(top + left, dx: 505pt, dy: 250pt)[#text(fill: wm, size: 36pt, font: ("Noto Sans",))[❯]]
  #place(top + left, dx: 140pt, dy: 330pt)[#text(fill: wm, size: 30pt, font: ("Noto Sans",))[✦]]
  #place(top + left, dx: 400pt, dy: 350pt)[#text(fill: wm, size: 40pt, font: ("Noto Sans",))[❯]]
  #place(top + left, dx: 18pt,  dy: 460pt)[#text(fill: wm, size: 46pt, font: ("Noto Sans",))[✦]]
  #place(top + left, dx: 498pt, dy: 440pt)[#text(fill: wm, size: 38pt, font: ("Noto Sans",))[❯]]
  #place(top + left, dx: 230pt, dy: 520pt)[#text(fill: wm, size: 32pt, font: ("Noto Sans",))[✦]]
  #place(top + left, dx: 55pt,  dy: 600pt)[#text(fill: wm, size: 50pt, font: ("Noto Sans",))[❯]]
  #place(top + left, dx: 488pt, dy: 590pt)[#text(fill: wm, size: 34pt, font: ("Noto Sans",))[✦]]
  #place(top + left, dx: 340pt, dy: 660pt)[#text(fill: wm, size: 42pt, font: ("Noto Sans",))[❯]]
  #place(top + left, dx: 22pt,  dy: 730pt)[#text(fill: wm, size: 36pt, font: ("Noto Sans",))[✦]]
  #place(top + left, dx: 492pt, dy: 720pt)[#text(fill: wm, size: 48pt, font: ("Noto Sans",))[❯]]
  #place(top + left, dx: 180pt, dy: 790pt)[#text(fill: wm, size: 30pt, font: ("Noto Sans",))[✦]]

  // ── TOP ACCENT BARS ──
  #place(top + left, dx: 0pt, dy: 0pt)[
    #block(width: 100%, height: 7pt, fill: c2)[]
  ]
  #place(top + left, dx: 0pt, dy: 7pt)[
    #block(width: 100%, height: 3pt, fill: c3)[]
  ]

  // ── LEFT ACCENT STRIP ──
  #place(top + left, dx: 0pt, dy: 0pt)[
    #block(width: 5pt, height: 100%, fill: c2)[]
  ]
  #place(top + left, dx: 5pt, dy: 0pt)[
    #block(width: 2pt, height: 100%, fill: c3)[]
  ]

  // ── MAIN CONTENT ──
  #align(center + horizon)[
    #pad(x: 52pt)[

      #text(fill: c2, size: 8pt, weight: "bold", tracking: 5pt,
        font: ("Noto Sans",))[PERSONAL REFERENCE]

      #v(22pt)

      #block(
        fill: rgb("#fef9f0"),
        inset: (x: 30pt, y: 24pt),
        radius: 10pt,
        stroke: 1.5pt + c2,
        width: 100%,
      )[
        #text(fill: ct, weight: "bold", size: 34pt, tracking: 1pt,
          font: ("Noto Sans",))[CLI CHEAT SHEET]
        #v(4pt)
        #line(length: 100%, stroke: 1pt + cb)
        #v(8pt)
        #text(fill: c2, weight: "bold", size: 15pt, tracking: 6pt,
          font: ("Noto Sans",))[COMPLETE A-Z GUIDE]
        #v(6pt)
        #text(fill: cs, size: 9pt, style: "italic",
          font: ("Noto Sans",))[NixOS · Bash · Hyprland · yt-dlp · Partition Tools — March 2026]
      ]

      #v(26pt)

      #grid(
        columns: (1fr, 1fr, 1fr, 1fr),
        gutter: 10pt,
        block(fill: rgb("#fef9f0"), inset: (x: 6pt, y: 14pt),
          radius: 8pt, stroke: 1pt + c1, width: 100%)[
          #align(center)[
            #text(fill: c1, weight: "bold", size: 17pt)[bash]
            #v(3pt)
            #text(fill: cl, size: 7pt, tracking: 2pt)[SHELL]
          ]
        ],
        block(fill: rgb("#fef9f0"), inset: (x: 6pt, y: 14pt),
          radius: 8pt, stroke: 1pt + c2, width: 100%)[
          #align(center)[
            #text(fill: c2, weight: "bold", size: 17pt)[nix]
            #v(3pt)
            #text(fill: cl, size: 7pt, tracking: 2pt)[NIXOS]
          ]
        ],
        block(fill: rgb("#fef9f0"), inset: (x: 6pt, y: 14pt),
          radius: 8pt, stroke: 1pt + c3, width: 100%)[
          #align(center)[
            #text(fill: c3, weight: "bold", size: 17pt)[2026]
            #v(3pt)
            #text(fill: cl, size: 7pt, tracking: 2pt)[EDITION]
          ]
        ],
        block(fill: rgb("#fef9f0"), inset: (x: 6pt, y: 14pt),
          radius: 8pt, stroke: 1pt + c4, width: 100%)[
          #align(center)[
            #text(fill: c4, weight: "bold", size: 17pt)[100%]
            #v(3pt)
            #text(fill: cl, size: 7pt, tracking: 2pt)[OFFICIAL]
          ]
        ],
      )

      #v(28pt)

      #line(length: 100%, stroke: 1pt + cb)
      #v(14pt)

      #grid(
        columns: (1fr, 1fr, 1fr, 1fr),
        gutter: 4pt,
        align(center)[#text(fill: cl, size: 7pt, tracking: 2pt)[SHELL CMDS]],
        align(center)[#text(fill: cl, size: 7pt, tracking: 2pt)[NIXOS]],
        align(center)[#text(fill: cl, size: 7pt, tracking: 2pt)[PARTITIONS]],
        align(center)[#text(fill: cl, size: 7pt, tracking: 2pt)[HYPRLAND]],
      )

      #v(14pt)
      #line(length: 100%, stroke: 1pt + cb)

    ]
  ]

  // ── BOTTOM ACCENT BARS ──
  #place(bottom + left, dx: 0pt, dy: -3pt)[
    #block(width: 100%, height: 3pt, fill: c3)[]
  ]
  #place(bottom + left, dx: 0pt, dy: -10pt)[
    #block(width: 100%, height: 7pt, fill: c2)[]
  ]

]
// ── END COVER PAGE ────────────────────────────────────────────────────────────

#pagebreak()

#set page(
  paper: "a4",
  fill: rgb("#fef9f0"),
  margin: (x: 2cm, y: 2cm),
  numbering: "1",
  header: context {
    if counter(page).get().first() > 1 {
      set text(size: 8pt, fill: rgb("#9ca3af"))
      grid(
        columns: (1fr, 1fr),
        align(left)[#text(fill: rgb("#c2185b"), weight: "bold")[CLI Cheat Sheet]],
        align(right)[#text(style: "italic")[A-Z Guide 2026]],
      )
      line(length: 100%, stroke: 0.4pt + rgb("#f8bbd0"))
    }
  },
  footer: context {
    line(length: 100%, stroke: 0.4pt + rgb("#f8bbd0"))
    v(2pt)
    grid(
      columns: (1fr, 1fr, 1fr),
      align(left)[#text(size: 7pt, fill: rgb("#f48fb1"))[CLI CHEAT SHEET]],
      align(center)[#text(fill: rgb("#c2185b"), size: 8pt)[— #counter(page).display() —]],
      align(right)[#text(size: 7pt, fill: rgb("#f48fb1"))[OFFICIAL SOURCES]],
    )
  },
)

#set text(
  font: ("Noto Sans",),
  size: 11pt,
  fill: rgb("#2d1020"),
  lang: "en",
)

#set par(
  justify: true,
  leading: 0.85em,
  spacing: 1em,
)

#set heading(numbering: "1.")

#show heading: it => {
  block(breakable: false)[#it]
}

// ── TABLE OF CONTENTS ─────────────────────────────────────────────────────────
#block(fill: rgb("#4a0030"), inset: (x: 12pt, y: 10pt), radius: 3pt, width: 100%)[
  #text(fill: white, weight: "bold", size: 14pt)[TABLE OF CONTENTS]
]
#v(8pt)

#link(<sec-1>)[#grid(columns: (90pt, 1fr, 20pt), align(left + horizon)[#text(fill: rgb("#c2185b"), weight: "bold", size: 9pt)[SECTION 1]], align(horizon)[#text(fill: rgb("#880e4f"), size: 9pt)[SHELL COMMANDS — eza, bat, head, tail, cp, mv, rm, sed, awk, fd...] #box(width: 1fr, repeat[#text(fill: rgb("#9CA3AF"), size: 8pt)[.]])], align(right + horizon)[#text(fill: rgb("#6B7280"), size: 8pt)[1]])]
#v(3pt)
#link(<sec-2>)[#grid(columns: (90pt, 1fr, 20pt), align(left + horizon)[#text(fill: rgb("#c2185b"), weight: "bold", size: 9pt)[SECTION 2]], align(horizon)[#text(fill: rgb("#880e4f"), size: 9pt)[STORAGE & DRIVES — lsblk, udisksctl, mount, chmod, blkid, fsck] #box(width: 1fr, repeat[#text(fill: rgb("#9CA3AF"), size: 8pt)[.]])], align(right + horizon)[#text(fill: rgb("#6B7280"), size: 8pt)[2]])]
#v(3pt)
#link(<sec-3>)[#grid(columns: (90pt, 1fr, 20pt), align(left + horizon)[#text(fill: rgb("#c2185b"), weight: "bold", size: 9pt)[SECTION 3]], align(horizon)[#text(fill: rgb("#880e4f"), size: 9pt)[BOOTABLE DRIVES & PARTITION MANAGEMENT TOOLKIT] #box(width: 1fr, repeat[#text(fill: rgb("#9CA3AF"), size: 8pt)[.]])], align(right + horizon)[#text(fill: rgb("#6B7280"), size: 8pt)[3]])]
#v(3pt)
#link(<sec-4>)[#grid(columns: (90pt, 1fr, 20pt), align(left + horizon)[#text(fill: rgb("#c2185b"), weight: "bold", size: 9pt)[SECTION 4]], align(horizon)[#text(fill: rgb("#880e4f"), size: 9pt)[yt-dlp — Video, Playlist, Audio Downloads] #box(width: 1fr, repeat[#text(fill: rgb("#9CA3AF"), size: 8pt)[.]])], align(right + horizon)[#text(fill: rgb("#6B7280"), size: 8pt)[4]])]
#v(3pt)
#link(<sec-5>)[#grid(columns: (90pt, 1fr, 20pt), align(left + horizon)[#text(fill: rgb("#c2185b"), weight: "bold", size: 9pt)[SECTION 5]], align(horizon)[#text(fill: rgb("#880e4f"), size: 9pt)[STEGHIDE — Hide Secrets in Images & Audio] #box(width: 1fr, repeat[#text(fill: rgb("#9CA3AF"), size: 8pt)[.]])], align(right + horizon)[#text(fill: rgb("#6B7280"), size: 8pt)[5]])]
#v(3pt)
#link(<sec-6>)[#grid(columns: (90pt, 1fr, 20pt), align(left + horizon)[#text(fill: rgb("#c2185b"), weight: "bold", size: 9pt)[SECTION 6]], align(horizon)[#text(fill: rgb("#880e4f"), size: 9pt)[ARCH LINUX — WiFi, mkinitcpio, Kernel Panic, Fixes] #box(width: 1fr, repeat[#text(fill: rgb("#9CA3AF"), size: 8pt)[.]])], align(right + horizon)[#text(fill: rgb("#6B7280"), size: 8pt)[6]])]
#v(3pt)
#link(<sec-7>)[#grid(columns: (90pt, 1fr, 20pt), align(left + horizon)[#text(fill: rgb("#c2185b"), weight: "bold", size: 9pt)[SECTION 7]], align(horizon)[#text(fill: rgb("#880e4f"), size: 9pt)[NIXOS + FLAKES + HOME MANAGER — Daily Cheatsheet] #box(width: 1fr, repeat[#text(fill: rgb("#9CA3AF"), size: 8pt)[.]])], align(right + horizon)[#text(fill: rgb("#6B7280"), size: 8pt)[7]])]
#v(3pt)
#link(<sec-8>)[#grid(columns: (90pt, 1fr, 20pt), align(left + horizon)[#text(fill: rgb("#c2185b"), weight: "bold", size: 9pt)[SECTION 8]], align(horizon)[#text(fill: rgb("#880e4f"), size: 9pt)[HYPRLAND — Keybinds Reference] #box(width: 1fr, repeat[#text(fill: rgb("#9CA3AF"), size: 8pt)[.]])], align(right + horizon)[#text(fill: rgb("#6B7280"), size: 8pt)[8]])]
#v(3pt)
#link(<sec-9>)[#grid(columns: (90pt, 1fr, 20pt), align(left + horizon)[#text(fill: rgb("#c2185b"), weight: "bold", size: 9pt)[SECTION 9]], align(horizon)[#text(fill: rgb("#880e4f"), size: 9pt)[WORTH LOOKING AT — Official Resources & Links] #box(width: 1fr, repeat[#text(fill: rgb("#9CA3AF"), size: 8pt)[.]])], align(right + horizon)[#text(fill: rgb("#6B7280"), size: 8pt)[9]])]

#v(6pt)
#line(length: 100%, stroke: 0.5pt + rgb("#f8bbd0"))

#pagebreak()

// ─────────────────────────────────────────────────────────────────────────────
// SECTION 1 — SHELL COMMANDS
// ─────────────────────────────────────────────────────────────────────────────
#block(height: 0pt)[] <sec-1>

#align(center)[
  #text(size: 24pt, weight: "bold", fill: rgb("#c2185b"))[Commands 101]
]
#v(0.1cm)
#line(length: 100%, stroke: rgb("#c2185b"))

#align(center)[
  #text(size: 17pt, weight: "bold")[Shell Commands]
]

#text(size: 11pt, weight: "bold")[eza]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  #set text(font: "Noto Sans", size: 9pt)
```bash
  $ eza                              # Basic list
  $ eza -la                          # All files, long format
  $ eza -lah                         # All files, long, human sizes
  $ eza -T                           # Tree view
  $ eza -T -L 2                      # Tree view, 2 levels deep
  $ eza -lah --sort=modified         # Sort by modification time
  $ eza -lah --sort=size             # Sort by size
```
]

#v(0.7cm)

#text(size: 11pt, weight: "bold")[less & more]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  #set text(font: "Noto Sans", size: 9pt)
```bash
  $ less filename                    # View with scrolling (q to quit)
  $ more filename                    # Simple pager
```
]

#v(0.3em)

#text(weight: "bold")[bat]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  #set text(font: "Noto Sans", size: 9pt)
```bash
  $ bat filename                     # View with syntax highlighting
  $ bat -p filename                  # Plain output (no decorations)
  $ bat -A filename                  # Show all characters (spaces, tabs)
```
]

#v(0.5cm)

#text(size: 11pt, weight: "bold")[head & tail]

#text(weight: "bold")[First/last lines]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  #set text(font: "Noto Sans", size: 9pt)
```bash
  $ head filename                    # First 10 lines
  $ head -n 20 filename              # First 20 lines
  $ tail filename                    # Last 10 lines
  $ tail -n 20 filename              # Last 20 lines
```
]

#v(0.3em)

#text(weight: "bold")[file stuff]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  #set text(font: "Noto Sans", size: 9pt)
```bash
  $ file filename                    # Determine file type
  $ stat filename                    # Detailed file stats
  $ du -h filename                   # File/directory size human-readable
  $ du -sh directory                 # Total size of directory
```
]

#v(0.7cm)

#text(size: 11pt, weight: "bold")[touch, seq and echo]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ touch file1 file2 file3          Create multiple files
$ seq 7 | xargs -I {} touch {}.txt  Create multiple files at once
$ echo "content" > newfile         Create file with content
$ echo "more" >> existingfile      Append to file
```
]

#text(size: 11pt, weight: "bold")[mkdir]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ mkdir -p path/to/nested/dir      Create nested directories
$ mkdir dir1 dir2 dir3             Create multiple directories
$ mkdir -p project/{src,docs,tests}   Create multiple subdirs
```
]
#v(0.7cm)
#text(size: 11pt, weight: "bold")[cp]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[

```bash
Copy files
$ cp source.txt dest.txt           Copy file
$ cp file1 file2 /dest/dir/        Copy multiple files to directory
$ cp -i source dest                Interactive (ask before overwrite)
$ cp -v source dest                Verbose (show what's being copied)
$ cp -p source dest                Preserve attributes (timestamp, permissions)

$ cp -r sourcedir/ destdir/        Copy directory recursively
$ cp -rv sourcedir/ destdir/       Copy directory with verbose output
$ cp -rp sourcedir/ destdir/       Copy preserving attributes
$ cp -ru sourcedir/ destdir/       Copy only newer files (update)


$ cp *.txt /dest/                  Copy all .txt files
$ cp file{1,2,3}.txt /dest/        Copy specific files
$ cp -r dir/{subdir1,subdir2} /dest/   Copy specific subdirectories
```
]


#v(0.7cm)

#text(size: 11pt, weight: "bold")[mv]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[

```bash
Move/rename files
$ mv oldname newname               Rename file
$ mv source.txt /dest/dir/         Move file to directory
$ mv file1 file2 /dest/            Move multiple files
$ mv -i source dest                Interactive (ask before overwrite)
$ mv -v source dest                Verbose output


$ mv olddir newdir                 Rename directory
$ mv sourcedir /dest/path/         Move directory
```
]

#v(0.7cm)

#text(size: 11pt, weight: "bold")[rm]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[

```bash
$ rm file1 file2 file3             Delete multiple files
$ rm -i filename                   Interactive (ask for each file)
$ rm -v filename                   Verbose output
$ rm -f filename                   Force delete (no confirmation)


$ rm -r dirname                    Remove directory recursively
$ rm -rf dirname                   Force remove directory (DANGEROUS)
$ rm -riv dirname                  Interactive verbose recursive removal
```
]

#v(0.7cm)

#text(size: 11pt, weight: "bold")[stdin, stdout & pipes]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[

```bash
Redirection
command > file                   Redirect stdout to file (overwrite)
command >> file                  Redirect stdout to file (append)
command 2> file                  Redirect stderr to file
command &> file                  Redirect both stdout and stderr
command 2>&1                     Redirect stderr to stdout
```
]


#text(size: 11pt, weight: "bold")[pipes]


#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
command1 | command2              Pipe output to another command
cat file | sort | uniq           Chain multiple commands
```
]

#text(size: 11pt, weight: "bold")[...]


#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
find . -type f | wc -l           Count all files
du -h | sort -h | tail -n 10     10 largest items
pgrep firefox | xargs kill                Kill all firefox
```
]

#v(0.7cm)

#text(size: 11pt, weight: "bold")[sed]


#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[


```bash
In-place text replacement (sed)
sed -i 's/old/new/g' file.txt            Replace all occurrences
sed -i 's/old/new/' file.txt             Replace first occurrence per line
sed -i '10d' file.txt                    Delete line 10
sed -i '1,5d' file.txt                   Delete lines 1-5
sed -i '/pattern/d' file.txt             Delete lines matching pattern
sed -i 's/^/prefix/' file.txt            Add prefix to each line
sed -i 's/$/suffix/' file.txt            Add suffix to each line

Multiple files
sed -i 's/old/new/g' *.txt

With backup
sed -i.bak 's/old/new/g' file.txt        Creates file.txt.bak
```
]



#text(size: 11pt, weight: "bold")[awk]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
awk '{print $1}' file.txt                Print first column
awk '{print $1, $3}' file.txt            Print columns 1 and 3
awk -F':' '{print $1}' /etc/passwd       Custom delimiter
awk 'NR==10' file.txt                    Print line 10
awk 'NR>=10 && NR<=20' file.txt          Print lines 10-20
awk '/pattern/' file.txt                 Print lines matching pattern
awk '{sum+=$1} END {print sum}' file     Sum first column
```
]

#text(size: 11pt, weight: "bold")[sort]


#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash

sort file.txt                            Alphabetical sort
sort -r file.txt                         Reverse sort
sort -n file.txt                         Numerical sort
sort -h file.txt                         Human-readable numbers (1K, 1M)
sort -u file.txt                         Sort and remove duplicates
sort -k2 file.txt                        Sort by second column
sort -t':' -k3 -n /etc/passwd            Sort by 3rd field numerically
```
]

#text(size: 11pt, weight: "bold")[uniq]


#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
uniq file.txt                            Remove adjacent duplicate lines (sort first!)
uniq -c file.txt                         Count occurrences
uniq -d file.txt                         Show only adjacent duplicates
uniq -u file.txt                         Show only unique lines
```
]


#text(size: 11pt, weight: "bold")[wc]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
wc file.txt                              Lines, words, bytes
wc -l file.txt                           Count lines only
wc -w file.txt                           Count words only
wc -c file.txt                           Count bytes
wc -m file.txt                           Count characters
```
]

#v(0.7cm)

#text(size: 11pt, weight: "bold")[fd, find]


#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[

```bash
fd (modern find replacement) - you NEED this
fd pattern                       Simple search
fd pattern /path                 Search in specific path
fd -H pattern                    Include hidden files
fd -I pattern                    Include ignored files (.gitignore)
fd -e txt                        Find by extension
fd -e txt -e md                  Multiple extensions
fd -t f pattern                  Files only
fd -t d pattern                  Directories only
fd -t l pattern                  Symlinks only
fd -s pattern                    Case-sensitive
fd -S +100M                      Files larger than 100MB
fd -S -100M                      Files smaller than 100MB
fd pattern -x rm                 Execute command on results (pattern required!)
fd pattern -x bat                View all matching files

Find and execute with confirmation
fd pattern -x sh -c 'echo "Process $1?" && read -r && command "$1"' sh

Find modified in last N days
fd --changed-within 7d           Last 7 days
fd --changed-before 30d          More than 30 days ago

Find by user
find . -user $USER               Files owned by you
find . -type f -user $USER -exec ls -lh {} \;
```
]


#v(0.7cm)

#text(size: 11pt, weight: "bold")[split & csplit]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[

```bash
Split large files
split -b 100M largefile.zip part_        Split into 100MB chunks
split -l 1000 largefile.txt part_        Split by 1000 lines per file
split -n 5 largefile.dat part_           Split into 5 equal parts

Merge split files back
cat part_* > original_file

Split with better naming
split -b 100M -d --additional-suffix=.zip largefile.zip part_

csplit - split by pattern
csplit file.txt '/pattern/' '{*}'        Split at each pattern occurrence
```
]
#v(0.7cm)

#text(size: 11pt, weight: "bold")[column, paste & join +++]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[

```bash
column - columnate lists
column -t file.txt                       Auto-format into columns
mount | column -t                        Pretty-print mount info
cat /etc/passwd | column -t -s ':'       Format with custom separator

paste - merge lines
paste file1.txt file2.txt                Merge files side by side
paste -d ',' file1.txt file2.txt         Merge with comma delimiter
paste -s file.txt                        Merge all lines into one

join - merge files on common field (BOTH files MUST be sorted on join field first!)
sort file1.txt -o file1.txt && sort file2.txt -o file2.txt
join file1.txt file2.txt                 Join on first field
join -t ':' -1 3 -2 1 file1 file2        Join on specific fields

tee - write to multiple outputs
command | tee output.txt                 Display and save to file
command | tee -a output.txt              Append to file
command | tee file1.txt file2.txt        Save to multiple files

xargs - build commands from input
find . -name "*.tmp" -delete               Delete all .tmp files
fd -e txt -x cp {} backup/               Copy all txt files
echo "file1 file2 file3" | xargs -n 1 echo   Process one argument at a time
cat urls.txt | xargs -n 1 -P 4 wget      Download 4 URLs in parallel
```
]

#v(0.7cm)

#text(size: 11pt, weight: "bold")[shortcuts for bash shell]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[


```bash

Keyboard shortcuts in bash (already available)
Ctrl+A                           Move to beginning of line
Ctrl+E                           Move to end of line
Ctrl+U                           Delete from cursor to beginning
Ctrl+K                           Delete from cursor to end
Ctrl+W                           Delete word before cursor
Ctrl+Z                           Suspend current process

Brace expansion
mkdir {dir1,dir2,dir3}           Create multiple directories
cp file.txt{,.bak}               Quick backup (copies to file.txt.bak)
mv file.{txt,md}                 Rename extension
echo {1..10}                     Generate sequence
echo {a..z}                      Generate alphabet
```
]

#v(0.7cm)

// ─────────────────────────────────────────────────────────────────────────────
// SECTION 2 — STORAGE & DRIVES
// ─────────────────────────────────────────────────────────────────────────────
#block(height: 0pt)[] <sec-2>

#text(size: 11pt, weight: "bold")[lsblk, udisksctl, mount, unmount]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[


```bash
lsblk -f                         Show filesystem types
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT   Custom columns

With your udisks2/udiskie setup
udisksctl status                 Show device status
udisksctl dump                   Detailed device info

Mount external drive manually (if not auto-mounted)
udisksctl mount -b /dev/sdX1     Mount device (replace sdX1)
udisksctl unmount -b /dev/sdX1   Unmount device

Traditional mount (requires sudo)
sudo mount /dev/sdX1 /mnt/usb    Mount to /mnt/usb
sudo umount /mnt/usb             Unmount

Check if udiskie auto-mounted
findmnt                          Show all mount points
mount | grep sdX                 Show specific device mounts

Copy to/from external drives
cp -rv /path/to/source /run/media/$USER/DRIVENAME/        Copy to USB
cp -rv /run/media/$USER/DRIVENAME/file ~/                 Copy from USB

Safe eject (before physical removal)
udisksctl unmount -b /dev/sdX1   Unmount first
udisksctl power-off -b /dev/sdX  Power off the device
```
]

#v(0.7cm)

#text(size: 11pt, weight: "bold")[chmod, chown]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[


```bash
Change permissions
chmod 644 file                   rw-r--r-- (owner read/write, others read)
chmod 755 file                   rwxr-xr-x (owner all, others read/execute)
chmod 600 file                   rw------- (owner only)
chmod +x script.sh               Add execute permission
chmod -x file                    Remove execute permission
chmod u+x file                   Add execute for user/owner
chmod g+w file                   Add write for group
chmod o-r file                   Remove read for others
chmod -R 755 directory/          Recursive permission change

Change ownership (requires sudo)
sudo chown user:group file       Change owner and group
sudo chown user file             Change owner only
sudo chown :group file           Change group only
sudo chown -R user:group dir/    Recursive ownership change
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[find]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
findmnt                                 All mount points
findmnt /dev/sda1                       Specific device
findmnt -t ext4                         By filesystem type
findmnt -S /dev/sda1                    By source
```
]

#v(0.4cm)


#text(size: 11pt, weight: "bold")[blkid]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[

```bash
sudo blkid                              All block devices
sudo blkid /dev/sda1                    Specific device
sudo blkid -s UUID /dev/sda1            Show only UUID
```
]

#v(0.4cm)


#text(size: 11pt, weight: "bold")[fsck]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
sudo fsck /dev/sdX1                     Check and repair (UNMOUNT FIRST)
sudo fsck -n /dev/sdX1                  Check without changes (safe)
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[badblocks]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
sudo badblocks -v /dev/sdX              Read-only test
sudo badblocks -nvs /dev/sdX            Non-destructive write test
```
]

#v(0.7cm)

// ─────────────────────────────────────────────────────────────────────────────
// SECTION 3 — BOOTABLE DRIVES & PARTITION MANAGEMENT
// ─────────────────────────────────────────────────────────────────────────────
#block(height: 0pt)[] <sec-3>

#text(size: 11pt, weight: "bold")[Create bootable drive]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ lsblk
$ sudo dd if=/path/to/your.iso of=/dev/sdX bs=4M status=progress oflag=sync
$ sync

$ free -h
$ df -h

Remove .Trash-1000 folders from your USB drive
$ ls /run/media/$USER/
$ sudo rm -rf /run/media/$USER/YOUR_USB_NAME/.Trash-1000/*

$ lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT | grep -v '^loop'

udisks2 + cryptsetup
$ groups
$ sudo usermod -aG storage $USER
$ groups

For unmount
$ udisksctl unmount -b /dev/sda1

Rename (label) an exFAT drive
$ sudo exfatlabel /dev/sdX1 NewName

Rename (label) an NTFS drive
$ sudo ntfslabel /dev/sdX1 NewName

Only LUKS Encryption — DESTROYS ALL DATA on partition
$ sudo cryptsetup luksFormat /dev/sdX1 && sudo cryptsetup open /dev/sdX1 secure_usb

Format as exFAT (no encryption)
$ sudo umount /run/media/$USER/DRIVENAME
$ sudo cryptsetup close secure_usb   # Only if drive was previously LUKS-encrypted — skip if not
$ sudo udevadm settle
$ sudo partprobe /dev/sda
$ lsblk -fp
$ sudo mkfs.exfat -n MyB /dev/sda1

Format as NTFS (no encryption)
$ sudo mkfs.ntfs -f -L MyUSB /dev/sdX1

Format USB - exFAT + LUKS
$ sudo cryptsetup luksFormat /dev/sdX1 && sudo cryptsetup open /dev/sdX1 secure_usb && sudo mkfs.exfat -n mydrivesam /dev/mapper/secure_usb && sudo cryptsetup close secure_usb

Format USB - NTFS + LUKS
$ sudo cryptsetup luksFormat /dev/sdX1 && sudo cryptsetup open /dev/sdX1 secure_usb && sudo mkfs.ntfs -f -L Mydrivesand /dev/mapper/secure_usb && sudo cryptsetup close secure_usb

Unlock and mount - exFAT
$ sudo cryptsetup open /dev/sdX1 secure_usb && sudo mkdir -p /mnt/usb && sudo mount -t exfat /dev/mapper/secure_usb /mnt/usb

Unlock and mount - NTFS
$ sudo cryptsetup open /dev/sdX1 secure_usb && sudo mkdir -p /mnt/usb && sudo mount -t ntfs3 /dev/mapper/secure_usb /mnt/usb

Lock and unmount - both
$ sudo umount /mnt/usb && sudo cryptsetup close secure_usb
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[PARTITION MANAGEMENT TOOLKIT]

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
PART 1 — CREATE NEW PARTITIONS (WIPING OLD TABLE)
$ lsblk -fp
$ sudo wipefs --all /dev/sda

Create new GPT partitions
$ sudo parted /dev/sda --script mklabel gpt \
  mkpart "part1" 0% 28GB \
  mkpart "part2" 28GB 100%

For BIOS/MBR systems
$ sudo parted /dev/sda --script mklabel msdos \
  mkpart primary 0% 28GB \
  mkpart primary 28GB 100%

Verify
$ lsblk -fp

Format - exFAT
$ sudo mkfs.exfat -n Part1 /dev/sda1
$ sudo mkfs.exfat -n Part2 /dev/sda2

Format - NTFS
$ sudo mkfs.ntfs -f -L Part1 /dev/sda1
$ sudo mkfs.ntfs -f -L Part2 /dev/sda2

PART 2 — CREATE NEW PARTITION WITHOUT LOSING EXISTING NTFS DATA
$ lsblk -fp
$ sudo umount /dev/sda1
$ sudo ntfsfix /dev/sda1
$ sudo ntfsresize --size 100G /dev/sda1           # shrinks NTFS filesystem only
$ sudo parted /dev/sda resizepart 1 100GB          # shrinks actual partition to match (REQUIRED)
$ sudo parted /dev/sda --script mkpart "NewPart" 100GB 100%
$ sudo mkfs.exfat -n NewPart /dev/sda2
$ lsblk -fp
```
]

#v(0.7cm)

// ─────────────────────────────────────────────────────────────────────────────
// SECTION 4 — yt-dlp
// ─────────────────────────────────────────────────────────────────────────────
#block(height: 0pt)[] <sec-4>

#align(center)[
  #text(size: 17pt, weight: "bold")[yt-dlp]
]

for the maximum best quality possible

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ yt-dlp --no-playlist --no-call-home --no-cache-dir --no-cookies -f bestvideo+bestaudio/best --merge-output-format mkv --write-description --write-info-json -P ~/Downloads -o "%(title).100s.%(ext)s" "VIDEO_URL"
```
]

#v(0.4cm)

for specific resolution/quality, say 1080p

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ yt-dlp --no-playlist --no-call-home --no-cache-dir --no-cookies -f "bestvideo[height=1080]+bestaudio/best" --merge-output-format mkv --write-description --write-info-json -P ~/Downloads -o "%(title).100s.%(ext)s" "VIDEO_URL"
```
]

#v(0.4cm)

download entire playlist, maximum quality

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ yt-dlp --no-call-home --no-cache-dir --no-cookies -f bestvideo+bestaudio/best --merge-output-format mkv --write-description --write-info-json -P ~/Downloads -o "%(playlist_title)s/%(playlist_index)03d - %(title).100s.%(ext)s" "PLAYLIST_URL"
```
]

#v(0.4cm)

download entire playlist, specific resolution

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ yt-dlp --no-call-home --no-cache-dir --no-cookies -f "bestvideo[height=1080]+bestaudio/best" --merge-output-format mkv --write-description --write-info-json -P ~/Downloads -o "%(playlist_title)s/%(playlist_index)03d - %(title).100s.%(ext)s" "PLAYLIST_URL"
```
]

#v(0.4cm)

audio single file (replace flac with mp3/wav as needed)

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ yt-dlp --no-playlist --no-call-home --no-cache-dir --no-cookies -f bestaudio --extract-audio --audio-format flac --audio-quality 0 --write-description --write-info-json -P ~/Downloads -o "%(title).100s.%(ext)s" "VIDEO_URL"
```
]

#v(0.4cm)

audio playlist

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ yt-dlp --no-call-home --no-cache-dir --no-cookies -f bestaudio --extract-audio --audio-format flac --audio-quality 0 --write-description --write-info-json -P ~/Downloads -o "%(playlist_title)s/%(playlist_index)03d - %(title).100s.%(ext)s" "PLAYLIST_URL"
```
]

#v(0.7cm)

// ─────────────────────────────────────────────────────────────────────────────
// SECTION 5 — STEGHIDE
// ─────────────────────────────────────────────────────────────────────────────
#block(height: 0pt)[] <sec-5>

#align(center)[
  #text(size: 17pt, weight: "bold")[Steghide]
]

With Images
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
Embed a secret file in an image
$ steghide embed -cf image.jpg -ef secretfile

Extract the secret file
$ steghide extract -sf image.jpg
```
]

With Audio
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
Embed a secret file in an audio file
$ steghide embed -cf audio.wav -ef secretfile

Extract the secret file
$ steghide extract -sf audio.wav
```
]

#v(0.7cm)

// ─────────────────────────────────────────────────────────────────────────────
// SECTION 6 — ARCH LINUX
// ─────────────────────────────────────────────────────────────────────────────
#block(height: 0pt)[] <sec-6>

#align(center)[
  #text(size: 24pt, weight: "bold", fill: rgb("#c2185b"))[Arch stuff + Fixes + Tweaking]
]

#line(length: 100%, stroke: rgb("#c2185b"))

#v(0.3cm)

#text(size: 11pt, weight: "bold")[Connect WiFi]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ systemctl start iwd
$ iwctl
[iwd]# station list
[iwd]# station wlan0 scan
[iwd]# station wlan0 get-networks
[iwd]# station wlan0 connect "SSID/Network/WiFi-name"
```
]

Then put the WiFi password in and done. Run `quit` then `ping google.com` to test.

#v(0.4cm)

#text(size: 11pt, weight: "bold")[Fix mkinitcpio syntax error]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ sudo nvim /etc/mkinitcpio.conf
# Delete any stray character or unmatched quote at end of file
# Save, exit, then:
$ sudo mkinitcpio -P
$ ls -lh /boot/initramfs-linux.img
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[If already in Kernel Panic — chroot fix]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
# Boot from Arch installation media
$ mount /dev/sdXY /mnt              # root partition
$ mount --mkdir /dev/sdXZ /mnt/boot # EFI partition (MUST do this before chroot)
$ arch-chroot /mnt
$ nano /etc/mkinitcpio.conf
$ mkinitcpio -P
$ ls -l /boot/initramfs-linux.img
$ exit
$ umount -R /mnt
$ reboot
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[Prevent mkinitcpio corruption forever]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ sudo chattr +i /etc/mkinitcpio.conf    # lock (immutable)

# To edit in future:
$ sudo chattr -i /etc/mkinitcpio.conf   # unlock
# edit
$ sudo chattr +i /etc/mkinitcpio.conf   # lock again
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[Disable SSH root login]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ sudo nvim /etc/ssh/sshd_config
# Find: PermitRootLogin
# Set to: PermitRootLogin no
# Save and exit, then:
$ sudo systemctl restart sshd
```
]

#v(0.7cm)

// ─────────────────────────────────────────────────────────────────────────────
// SECTION 7 — NIXOS
// ─────────────────────────────────────────────────────────────────────────────
#block(height: 0pt)[] <sec-7>

#pagebreak()

#align(center)[
  #text(size: 24pt, weight: "bold", fill: rgb("#c2185b"))[NixOS + Flakes + Home Manager]
]

#line(length: 100%, stroke: rgb("#c2185b"))

#v(0.3cm)

#align(center)[
  #text(size: 17pt, weight: "bold")[Daily Cheatsheet]
]

#v(0.3cm)

#text(size: 11pt, weight: "bold")[Edit system packages or config]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ sudo nvim /etc/nixos/configuration.nix
$ sudo nixos-rebuild switch --flake /etc/nixos#nixos
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[Edit dotfiles / programs (Home Manager)]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ sudo nvim /etc/nixos/home.nix
$ sudo nixos-rebuild switch --flake /etc/nixos#nixos
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[Rollback if something breaks]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ sudo nixos-rebuild switch --rollback
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[Search packages]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ nix search nixpkgs packagename
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[Check generations (history)]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
$ sudo nix-env --list-generations --profile /nix/var/nix/profiles/system
```
]

#v(0.7cm)

#align(center)[
  #text(size: 17pt, weight: "bold")[Monthly Maintenance Routine]
]

#v(0.3cm)

#text(size: 11pt, weight: "bold")[Full routine — run in this exact order]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
# 1. UPDATE — pull latest packages within current stable branch
$ cd /etc/nixos && sudo nix flake update

# 2. REBUILD — apply everything
$ sudo nixos-rebuild switch --flake /etc/nixos#nixos

# 3. LIST generations
$ sudo nix-env --list-generations --profile /nix/var/nix/profiles/system

# 4. CLEAN — keep last 3, delete rest + garbage collect
$ nh clean all --keep 3

# 5. BACKUP — push to GitHub
$ cp /etc/nixos/home.nix ~/nixos-config/
$ cp /etc/nixos/configuration.nix ~/nixos-config/
$ cp /etc/nixos/flake.nix ~/nixos-config/
$ cp /etc/nixos/flake.lock ~/nixos-config/
$ cd ~/nixos-config && git add . && git commit -m "updated" && git push
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[UPGRADE — jump to next NixOS release (e.g. 26.05 in May 2026)]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
# Change ONE line in flake.nix:
url = "github:NixOS/nixpkgs/nixos-26.05";

# Then run full monthly routine again (steps 1 → 2 → 3 → 4 → 5)
```
]

#v(0.7cm)

#align(center)[
  #text(size: 17pt, weight: "bold")[Fresh Machine Restore]
]

#v(0.3cm)

#text(size: 11pt, weight: "bold")[Clone and apply entire system from scratch]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
# 1. Install NixOS minimal from ISO
# 2. Generate fresh hardware config
$ sudo nixos-generate-config

# 3. Clone your config repo
$ git clone https://github.com/shaonahmedronok1/nixos-config

# 4. Copy your files (NOT hardware-configuration.nix)
$ sudo cp nixos-config/flake.nix /etc/nixos/
$ sudo cp nixos-config/flake.lock /etc/nixos/
$ sudo cp nixos-config/configuration.nix /etc/nixos/
$ sudo cp nixos-config/home.nix /etc/nixos/

# 5. One command — entire system materializes
$ sudo nixos-rebuild switch --flake /etc/nixos#nixos
```
]

#v(0.7cm)

#align(center)[
  #text(size: 17pt, weight: "bold")[Key Concepts]
]

#v(0.3cm)

#text(size: 11pt, weight: "bold")[File structure]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
/etc/nixos/
├── flake.nix                  # entry point, versions pinned
├── flake.lock                 # exact version snapshot — commit this to git
├── configuration.nix          # system packages, services, hardware
├── home.nix                   # all dotfiles, user programs
└── hardware-configuration.nix # machine-specific — regenerate fresh on new PC
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[Rules — never break these]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
# Never edit ~/.config directly — Home Manager owns it via symlinks
# Never copy hardware-configuration.nix to a new machine — always regenerate
# Always commit flake.lock to GitHub after nix flake update
# home.stateVersion — never change this value ever
```
]

#v(0.4cm)

#text(size: 11pt, weight: "bold")[~/.config explained]
#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
# ~/.config still exists but everything is symlinks pointing to /nix/store/
# Example:
~/.config/waybar/config.jsonc -> /nix/store/abc123.../waybar-config.jsonc
~/.config/hypr/hyprland.conf  -> /nix/store/abc123.../hyprland.conf
~/.bashrc                     -> /nix/store/abc123.../bashrc

# Edit home.nix → rebuild → symlinks update automatically
# Never touch the files directly
```
]

#v(0.7cm)

// ─────────────────────────────────────────────────────────────────────────────
// SECTION 8 — HYPRLAND KEYBINDS
// ─────────────────────────────────────────────────────────────────────────────
#block(height: 0pt)[] <sec-8>

#align(center)[
  #text(size: 17pt, weight: "bold")[Hyprland Keybinds]
]

#v(0.3cm)

#block(
  fill: rgb("#fdf0f5"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
```bash
Super + Return          Open terminal (alacritty)
Super + grave           Open terminal (alacritty)
Super + Space           App launcher (fuzzel)
Super + B               Chromium
Super + E               Nautilus file manager
Super + C               Kill active window
Super + F               Toggle fullscreen
Super + Shift + Space   Toggle float
Super + V               Clipboard history (cliphist)
Super + period          Emoji picker
Super + Z               Screenshot region
Super + Shift + Z       Screenshot full
Super + Shift + X       Lock screen (swaylock)
Super + Shift + L       Lock screen
Super + N               Dismiss notification
Super + Shift + N       Dismiss all notifications
Super + Shift + E       Exit Hyprland

Super + H/J/K/L         Focus window left/down/up/right
Super + arrows          Focus window (arrow keys)
Super + Shift + H/J/K/L Move window left/down/up/right
Super + 1-9             Switch to workspace 1-9
Super + Shift + 1-9     Move window to workspace 1-9
Super + Shift + period  Move to next monitor
Super + Shift + comma   Move to previous monitor

Super + mouse drag      Move window
Super + right-click     Resize window

Super + Page_Up         Brightness up (ddcutil)
Super + Page_Down       Brightness down (ddcutil)
Super + F1              Mute audio
Super + F2              Volume down
Super + F3              Volume up
```
]

#v(0.7cm)

// ─────────────────────────────────────────────────────────────────────────────
// SECTION 9 — WORTH LOOKING AT
// ─────────────────────────────────────────────────────────────────────────────
#block(height: 0pt)[] <sec-9>

#align(center)[
  #text(size: 14pt, weight: "bold")[Worth looking at]
]

#v(0.1cm)

#line(length: 100%, stroke: rgb("#c2185b"))

https://linux.die.net

https://fmhy.net

https://www.commandlinefu.com/commands/browse/sort-by-votes

https://www.commandlinefu.com/commands/browse

https://www.gnu.org/software/coreutils/manual

https://wiki.archlinux.org/title/Core_utilities

https://wiki.archlinux.org/title/Bash

https://dotfiles.substack.com

https://github.com/mhoye/moderntools

https://github.com/natpen/awesome-wayland

https://github.com/toolleeo/awesome-cli-apps-in-a-csv

https://github.com/rothgar/awesome-tuis

https://github.com/jlevy/the-art-of-command-line

https://github.com/alebcay/awesome-shell

https://github.com/agarrharr/awesome-cli-apps

https://github.com/Jacksaur/Gorgeous-GRUB

https://github.com/k4m4/terminals-are-sexy

https://igwiki.lyci.de/wiki/GNU/Linux_ricing

https://igwiki.lyci.de/wiki/List_of_recommended_GNU/Linux_software

https://lukesmith.xyz/programs

https://harmful.cat-v.org/software

https://github.com/mayfrost/guides/blob/master/ALTERNATIVES.md

https://comfy.guide/client/luks

https://comfy.guide/client/gpg

https://distro.tube

https://wiki.archlinux.org/title/Main_page

https://stackoverflow.com/questions

https://unix.stackexchange.com

https://github.com/mayfrost/guides/blob/master/CHECKLIST.md

https://www.gnu.org/software/librejs

https://www.gnu.org/prep/ftp.html

https://www.gnu.org/manual/blurbs.html

https://nixos.org/manual/nixos/stable

https://nix-community.github.io/home-manager

https://wiki.nixos.org/wiki/Flakes

https://search.nixos.org/packages
