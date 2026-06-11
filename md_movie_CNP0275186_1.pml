# PyMOL MD simulation movie — CNP0275186_1
# PfDHFR-TS K1 | 100 ns trajectory | 1 ns frame interval
# Kenneth Odoh Chidiebere — MSc Computational Drug Discovery

# ── Display settings ────────────────────────────────────
bg_color black
set ray_opaque_background, 1
set antialias, 2
set ray_shadows, 0
set depth_cue, 1
set fog_start, 0.45
set cartoon_fancy_helices, 1
set cartoon_fancy_sheets, 1
set stick_radius, 0.18
set sphere_scale, 0.30
set label_size, 20
set label_color, white
set label_font_id, 7

# ── Frame 000 (0 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0000.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

center lig
zoom lig, 12
orient lig
python
stored_view = cmd.get_view()
python end
pseudoatom tlabel, pos=[-8,-8,0], label='0 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0000.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 001 (1 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0001.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='1 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0001.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 002 (2 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0002.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='2 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0002.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 003 (3 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0003.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='3 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0003.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 004 (4 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0004.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='4 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0004.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 005 (5 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0005.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='5 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0005.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 006 (6 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0006.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='6 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0006.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 007 (7 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0007.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='7 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0007.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 008 (8 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0008.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='8 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0008.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 009 (9 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0009.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='9 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0009.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 010 (10 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0010.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='10 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0010.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 011 (11 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0011.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='11 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0011.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 012 (12 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0012.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='12 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0012.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 013 (13 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0013.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='13 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0013.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 014 (14 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0014.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='14 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0014.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 015 (15 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0015.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='15 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0015.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 016 (16 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0016.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='16 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0016.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 017 (17 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0017.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='17 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0017.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 018 (18 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0018.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='18 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0018.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 019 (19 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0019.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='19 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0019.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 020 (20 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0020.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='20 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0020.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 021 (21 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0021.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='21 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0021.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 022 (22 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0022.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='22 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0022.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 023 (23 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0023.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='23 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0023.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 024 (24 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0024.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='24 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0024.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 025 (25 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0025.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='25 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0025.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 026 (26 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0026.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='26 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0026.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 027 (27 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0027.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='27 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0027.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 028 (28 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0028.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='28 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0028.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 029 (29 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0029.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='29 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0029.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 030 (30 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0030.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='30 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0030.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 031 (31 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0031.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='31 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0031.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 032 (32 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0032.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='32 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0032.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 033 (33 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0033.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='33 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0033.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 034 (34 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0034.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='34 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0034.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 035 (35 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0035.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='35 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0035.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 036 (36 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0036.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='36 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0036.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 037 (37 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0037.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='37 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0037.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 038 (38 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0038.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='38 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0038.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 039 (39 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0039.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='39 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0039.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 040 (40 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0040.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='40 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0040.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 041 (41 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0041.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='41 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0041.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 042 (42 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0042.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='42 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0042.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 043 (43 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0043.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='43 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0043.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 044 (44 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0044.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='44 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0044.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 045 (45 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0045.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='45 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0045.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 046 (46 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0046.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='46 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0046.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 047 (47 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0047.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='47 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0047.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 048 (48 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0048.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='48 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0048.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 049 (49 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0049.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='49 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0049.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 050 (50 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0050.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='50 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0050.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 051 (51 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0051.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='51 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0051.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 052 (52 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0052.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='52 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0052.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 053 (53 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0053.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='53 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0053.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 054 (54 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0054.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='54 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0054.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 055 (55 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0055.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='55 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0055.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 056 (56 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0056.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='56 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0056.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 057 (57 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0057.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='57 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0057.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 058 (58 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0058.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='58 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0058.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 059 (59 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0059.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='59 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0059.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 060 (60 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0060.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='60 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0060.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 061 (61 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0061.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='61 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0061.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 062 (62 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0062.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='62 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0062.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 063 (63 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0063.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='63 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0063.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 064 (64 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0064.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='64 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0064.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 065 (65 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0065.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='65 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0065.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 066 (66 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0066.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='66 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0066.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 067 (67 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0067.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='67 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0067.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 068 (68 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0068.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='68 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0068.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 069 (69 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0069.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='69 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0069.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 070 (70 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0070.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='70 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0070.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 071 (71 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0071.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='71 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0071.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 072 (72 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0072.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='72 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0072.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 073 (73 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0073.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='73 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0073.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 074 (74 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0074.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='74 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0074.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 075 (75 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0075.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='75 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0075.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 076 (76 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0076.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='76 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0076.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 077 (77 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0077.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='77 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0077.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 078 (78 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0078.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='78 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0078.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 079 (79 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0079.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='79 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0079.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 080 (80 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0080.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='80 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0080.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 081 (81 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0081.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='81 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0081.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 082 (82 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0082.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='82 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0082.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 083 (83 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0083.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='83 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0083.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 084 (84 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0084.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='84 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0084.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 085 (85 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0085.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='85 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0085.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 086 (86 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0086.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='86 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0086.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 087 (87 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0087.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='87 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0087.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 088 (88 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0088.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='88 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0088.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 089 (89 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0089.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='89 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0089.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 090 (90 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0090.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='90 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0090.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 091 (91 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0091.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='91 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0091.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 092 (92 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0092.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='92 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0092.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 093 (93 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0093.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='93 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0093.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 094 (94 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0094.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='94 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0094.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 095 (95 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0095.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='95 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0095.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 096 (96 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0096.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='96 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0096.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 097 (97 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0097.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='97 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0097.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 098 (98 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0098.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='98 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0098.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 099 (99 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0099.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='99 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0099.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

# ── Frame 100 (100 ns) ──────────────────
load C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/frame_0100.pdb, frm

hide everything, frm
select prot, frm and polymer.protein
select lig, frm and resname UNL
select key, frm and resi 54+160+154
select mut51, frm and resi 51
select mut59, frm and resi 59
select mut108, frm and resi 108
select mut164, frm and resi 164
show cartoon, prot
color gray70, prot
set cartoon_transparency, 0.35, prot
show sticks, key
color gray40, key
hide hydrogens, key
show sticks, mut51
color magenta, mut51
hide hydrogens, mut51
label mut51 and name CA, '%s%s' % (resn, resi)
show sticks, mut59
color magenta, mut59
hide hydrogens, mut59
label mut59 and name CA, '%s%s' % (resn, resi)
show sticks, mut108
color magenta, mut108
hide hydrogens, mut108
label mut108 and name CA, '%s%s' % (resn, resi)
show sticks, mut164
color magenta, mut164
hide hydrogens, mut164
label mut164 and name CA, '%s%s' % (resn, resi)
show sticks, lig
color tv_red, lig
show spheres, lig and name O+N
hide hydrogens, lig

python
cmd.set_view(stored_view)
python end
pseudoatom tlabel, pos=[-8,-8,0], label='100 ns'
hide everything, tlabel
show label, tlabel
png C:/my_projects_all/portfolio_projects/Msc_project/figures/binding_site/movie_frames/CNP0275186_1/render_0100.png, width=1200, height=900, dpi=150

delete frm
delete prot
delete lig
delete key
delete mut51
delete mut59
delete mut108
delete mut164
delete tlabel

print 'All frames rendered.'
quit