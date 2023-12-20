import torch
from torch.nn import Module, Linear
from torch import Tensor

class Model(Module):
    def __init__(self):
        super().__init__()
        self.proj = Linear(1024, 1024)

    def forward(self, x: Tensor):
        return self.proj(x)


# Forward Demo
@torch.no_grad()
def demo():
    model = Model()
    B = 3
    out = model(torch.rand(B, 1024))
    print(out)
    print(out.shape)
    return out

if __name__ == "__main__":
    demo()
