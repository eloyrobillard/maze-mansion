import { Api } from 'Types';

export const apiMock: Api = {
  generateFinal: () => [['']],
  updateClasses: (classLists: string[][], change: number, updateDir: number) => [['']],
  newMazeDescriptor: (width: number, height: number) => { return; },
  getStepsLen: () => 0
};