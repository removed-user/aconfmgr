#!/bin/bash
function echo_build() {
# Compile Time Version Info 

pkgver=261.r87743
pkgrel=1
	local _version_info_comp_opts+=(
		version-tag="${pkgver}-${pkgrel}-arch"
		vcs-tag="true"                         
		shared-lib-tag="${pkgver}-${pkgrel}"   
		mode="developer"                       
	  )

# Compile time test options for arch-meson
	local _meson_test_flags=(
		'tests=false'
		'slow-tests=false'
		'fuzz-tests=false'
		'oss-fuzz=false'
		'llvm-fuzz=false'
)

#Initialize empty arrays
	#"Test Options Array"
		# Convinience for testing new options, appended to _comp_opts after _version_info_comp_opts and _meson_test_flags
		local _test_comp_opts=()

	#"Unset/Dummy Options Array"; Holds the Key=Value pairs of all Unset/Auto Compilation Options
		# This is a list of currently unused options, It is not actually used or read at any point, and exists as a reminder to set options
		# Or incase any options functionality ever changes and you have to set a value for it
		local _unset_comp_opts=()

	#"Standard Options Array"
		# Holds the Key=Value pairs of standard/known good Compilation Options
		local _std_comp_opts=()

	#"Final Options Array"; Holds the Key=Value pairs of all Compilation Options, "Strings"
	# This is the final, merged option list, Passed to flagify()
		local _all_comp_opts=()


	#"Final Options Assoc Array"; Holds the Key=Value pairs of all Compilation Options
		# This is "Also" the final, merged option list, Converted to an Associative Array
		# To query/conditionally package things based on what's enabled
		local -A option=()
# Remember to actually asssign things to this later

	#"Meson Options Array"
		# Final merged option list, passed to meson, equal to _comp_ops prepended with "-D"
		local _meson_options=()

#DONE INITIALIZING ARRAYS
# CONFIG BELOW


	local _std_comp_opts+=(
apparmor=disabled
bootloader=enabled
xenctrl=disabled
bpf-framework=enabled
ima=false
install-tests=false
libidn2=enabled
lz4=enabled
man=enabled
selinux=disabled
sshdprivsepdir=/usr/share/empty.sshd
vmlinux-h=provided
vmlinux-h-path=/usr/src/linux/vmlinux.h

dbuspolicydir=/usr/share/dbus-1/system.d
default-dnssec=no
default-kill-user-processes=false
default-locale='en_US.UTF-8'
localegen-path=/usr/bin/locale-gen
dns-over-tls=openssl
fallback-hostname='archlinux'
nologin-path=/usr/bin/nologin
ntp-servers="${_timeservers[*]}"
dns-servers="${_nameservers[*]}"
apparmor=disabled
rpmmacrosdir=no
sysvinit-path=no
sysvrcnd-path=no
docdir='no'

xinitrcdir=no
www-target=no
microhttpd='disabled'

sbat-distro='arch'
sbat-distro-summary='Arch Linux AUR'
sbat-distro-pkgname="${pkgname}"
sbat-distro-version="${pkgver}"
sbat-distro-url="https://aur.archlinux.org/pkgbase/systemd-liberated-git"
imds='disabled'
importd='disabled'
binfmt='false'
default-keymap='us'
sysupdate='disabled'
sysupdated='disabled'
remote='disabled'
repart='disabled'
				)

	local _test_comp_opts+=(

				)


		local _unset_comp_opts=(
#imds-network='disabled'
			)

# Lazy join arrays
local _all_comp_opts+=("$(printf "%s\n" "${_version_info_comp_opts[@]}")")
local _all_comp_opts+=("$(printf "%s\n" "${_meson_test_flags[@]}")")
local _all_comp_opts+=("$(printf "%s\n" "${_std_comp_opts[@]}")")
local _all_comp_opts+=("$(printf "%s\n" "${_test_comp_opts[@]}")")

function flagify(){
readarray -t _meson_options < <(for item in "${_all_comp_opts[@]}";do sed 's#^#-D#g' <<< "$item"; done)
}
flagify



#To test/check your arrays
function _print_post_merge(){
function _print_all_comp_opts(){
printf \\n_all_comp_opts\:\\n\\n
printf "%s\n" "${_all_comp_opts[@]}"
}
_print_all_comp_opts
function _print_meson_options(){
printf \\n_meson_options\:\\n\\n
printf "%s\n" "${_meson_options[@]}"
}
_print_meson_options
}

function _print_pre_merge(){
function print_version_info_comp_opts(){
printf \\nversion_info_comp_opts\:\\n\\n
printf "%s\n" "${_version_info_comp_opts[@]}"
}
print_version_info_comp_opts
function print_meson_test_flags(){
printf \\nmeson_test_flags\:\\n\\n
printf "%s\n" "${_meson_test_flags[@]}"
}
print_meson_test_flags
function print_std_comp_opts(){
printf \\nstd_comp_opts\:\\n\\n
printf "%s\n" "${_std_comp_opts[@]}"
}
print_std_comp_opts
function print_test_comp_opts(){
printf \\ntest_comp_opts\:\\n\\n
printf "%s\n" "${_test_comp_opts[@]}"
}
print_test_comp_opts
}
}

echo_build
