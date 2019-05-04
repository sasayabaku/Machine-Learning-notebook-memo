import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.autograd import Variable
from torch.utils.data import DataLoader


class CNNModel(nn.Module):
    def __init__(self):
        super(CNNModel, self).__init__()
        self.conv1 = nn.Conv2d(3, 64, kernel_size=2)
        self.pool1 = nn.MaxPool2d(kernel_size=3)

        self.conv2 = nn.Conv2d(64, 32, kernel_size=2)
        self.pool2 = nn.MaxPool2d(kernel_size=2)

#         self.conv3 = nn.Conv2d(32, 16, kernel_size=2)
#         self.pool3 = nn.MaxPool2d(kernel_size=2)

        self.fc1 = nn.Linear(512, 3000)
        self.fc2 = nn.Linear(3000, 10)

    def forward(self, x):
        out = self.pool1(F.relu(self.conv1(x)))
        out = self.pool2(F.relu(self.conv2(out)))
        # out = self.pool3(F.relu(self.conv3(out)))

        out = out.view(out.size(0), -1)

        out = F.relu(self.fc1(out))
        out = F.log_softmax(out)

        return out