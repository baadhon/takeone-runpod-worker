FROM runpod/worker-comfyui:5.8.6-base

# The base image ships an older ComfyUI that predates native MiniMax H3
# support (MiniMaxH3ReferenceToVideo, ComfyMathExpression, PrimitiveFloat,
# PrimitiveStringMultiline all landed in ComfyUI 0.30+). Re-run comfy-cli's
# install against the same /comfyui workspace at a newer pinned version to
# upgrade it in place.
RUN comfy --workspace /comfyui install --version 0.31.1 --nvidia --restore
