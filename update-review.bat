@echo off

cd %~dp0

git pull

cd ComfyUI
start https://github.com/n1ckfg/ComfyUI
git pull

cd custom_nodes

for /d %%d in (*) do (
    if exist "%%d\.git" (
		start https://github.com/n1ckfg/%%~nd
        echo Pulling changes for repository: %%~nd
        pushd "%%d" && (
            git pull
            popd
        )
    )
)

@pause